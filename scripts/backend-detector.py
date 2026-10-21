#!/usr/bin/env python3
"""
Backend-Master Deterministic Anti-Pattern Detector
Scans backend codebases for the 7 deadly backend anti-patterns without requiring LLM calls.
Zero external dependencies (uses Python standard library: ast, re, sys, pathlib).
"""

import ast
import os
import re
import sys
from pathlib import Path
from typing import Dict, List, NamedTuple

# Ensure UTF-8 stdout encoding on Windows consoles
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8")

class Violation(NamedTuple):
    file_path: str
    line: int
    rule_id: str
    severity: str
    message: str
    snippet: str

# Regex patterns for fast multi-language scanning
REGEX_RULES = [
    # Rule 2: SQL String Formatting / Interpolation
    {
        "id": "BM002-SQL-INJECTION",
        "severity": "CRITICAL",
        "pattern": re.compile(
            r"""(?i)(execute|query|raw|cursor\.execute)\s*\(\s*(f["'].*SELECT|f["'].*INSERT|f["'].*UPDATE|f["'].*DELETE|["'].*SELECT.*["']\s*(\+|\%)\s*\w+)""",
            re.VERBOSE,
        ),
        "message": "Dynamic SQL interpolation detected. Mandate parameterized bind variables.",
        "extensions": [".py", ".js", ".ts", ".go", ".rb", ".php", ".java", ".cs"],
    },
    # Rule 3: Event-Loop Blocking in Async Handlers
    {
        "id": "BM003-EVENT-LOOP-BLOCK",
        "severity": "HIGH",
        "pattern": re.compile(
            r"""(?i)(time\.sleep\s*\(|fs\.readFileSync|requests\.(get|post|put|delete)\s*\()""",
            re.VERBOSE,
        ),
        "message": "Synchronous blocking I/O call inside potential async execution path.",
        "extensions": [".py", ".js", ".ts"],
    },
    # Rule 4: Unbounded Queries
    {
        "id": "BM004-UNBOUNDED-QUERY",
        "severity": "MEDIUM",
        "pattern": re.compile(
            r"""(?i)SELECT\s+\*\s+FROM\s+[a-zA-Z0-9_]+(?!\s+WHERE|\s+LIMIT|\s+ORDER)""",
            re.VERBOSE,
        ),
        "message": "Unbounded SELECT * query without WHERE or LIMIT clause.",
        "extensions": [".py", ".js", ".ts", ".go", ".sql", ".rb", ".php"],
    },
    # Rule 5: Silent Error Swallowing
    {
        "id": "BM005-SILENT-ERROR-SWALLOW",
        "severity": "HIGH",
        "pattern": re.compile(
            r"""(?i)(except\s+Exception:\s*pass|catch\s*\([^\)]*\)\s*\{\s*\})""",
            re.VERBOSE,
        ),
        "message": "Empty catch/except block swallows exceptions silently. Mandate RFC 7807 error handling.",
        "extensions": [".py", ".js", ".ts", ".go", ".java", ".cs"],
    },
    # Rule 6: Hardcoded Secrets
    {
        "id": "BM006-HARDCODED-SECRET",
        "severity": "CRITICAL",
        "pattern": re.compile(
            r"""(?i)(api[_-]?key|jwt[_-]?secret|password|db[_-]?pass)\s*[:=]\s*["'][a-zA-Z0-9_\-\.]{8,}["']""",
            re.VERBOSE,
        ),
        "message": "Hardcoded secret or credential token detected. Mandate environment variable injection.",
        "extensions": [".py", ".js", ".ts", ".go", ".rb", ".php", ".env.example"],
    },
]

IGNORE_DIRS = {
    ".git", "node_modules", "vendor", "__pycache__", ".venv", "venv",
    "dist", "build", ".next", ".cache", "coverage", ".pytest_cache"
}

def scan_file(file_path: Path) -> List[Violation]:
    violations: List[Violation] = []
    ext = file_path.suffix.lower()

    try:
        content = file_path.read_text(encoding="utf-8", errors="ignore")
    except Exception:
        return violations

    lines = content.splitlines()

    # Regex Rule Scanning
    for rule in REGEX_RULES:
        if ext in rule["extensions"]:
            for idx, line in enumerate(lines, 1):
                # Ignore comments
                stripped = line.strip()
                if stripped.startswith(("#", "//", "/*", "*")):
                    continue
                match = rule["pattern"].search(line)
                if match:
                    violations.append(
                        Violation(
                            file_path=str(file_path),
                            line=idx,
                            rule_id=rule["id"],
                            severity=rule["severity"],
                            message=rule["message"],
                            snippet=line.strip()[:100],
                        )
                    )

    # AST check for Python async event-loop blocking (Rule 3) & N+1 queries in loops (Rule 1)
    if ext == ".py":
        try:
            tree = ast.parse(content, filename=str(file_path))
            for node in ast.walk(tree):
                # Check for loop queries (N+1 heuristic)
                if isinstance(node, (ast.For, ast.While)):
                    for inner in ast.walk(node):
                        if isinstance(inner, ast.Call) and isinstance(inner.func, ast.Attribute):
                            attr_name = inner.func.attr.lower()
                            if attr_name in ("execute", "query", "filter", "find_one", "fetch"):
                                violations.append(
                                    Violation(
                                        file_path=str(file_path),
                                        line=inner.lineno,
                                        rule_id="BM001-N-PLUS-ONE",
                                        severity="HIGH",
                                        message=f"Possible N+1 query: database call '{attr_name}' detected inside a loop.",
                                        snippet=lines[inner.lineno - 1].strip()[:100] if inner.lineno <= len(lines) else "",
                                    )
                                )
        except SyntaxError:
            pass

    return violations

def main():
    target = sys.argv[1] if len(sys.argv) > 1 else "."
    target_path = Path(target).resolve()

    if not target_path.exists():
        print(f"Error: Target path '{target}' does not exist.", file=sys.stderr)
        sys.exit(1)

    print(f"⚡ [backend-master: DETECTOR] Scanning: {target_path}")

    files_to_scan: List[Path] = []
    if target_path.is_file():
        files_to_scan.append(target_path)
    else:
        for root, dirs, files in os.walk(target_path):
            dirs[:] = [d for d in dirs if d not in IGNORE_DIRS]
            for f in files:
                ext = Path(f).suffix.lower()
                if ext in {".py", ".js", ".ts", ".go", ".sql", ".rb", ".php", ".java", ".cs"}:
                    files_to_scan.append(Path(root) / f)

    total_violations = 0
    violations_by_sev: Dict[str, int] = {"CRITICAL": 0, "HIGH": 0, "MEDIUM": 0}

    for f in files_to_scan:
        file_violations = scan_file(f)
        for v in file_violations:
            total_violations += 1
            violations_by_sev[v.severity] = violations_by_sev.get(v.severity, 0) + 1
            print(f"[{v.severity}] {v.rule_id} at {v.file_path}:{v.line}")
            print(f"  Message: {v.message}")
            if v.snippet:
                print(f"  Code:    {v.snippet}")
            print()

    print("=" * 60)
    print(f"Scanned {len(files_to_scan)} backend files.")
    print(f"Violations Found: {total_violations} (Critical: {violations_by_sev['CRITICAL']}, High: {violations_by_sev['HIGH']}, Medium: {violations_by_sev['MEDIUM']})")

    if total_violations > 0:
        print("❌ Backend Anti-Patterns Detected. Run '/backend-master audit' or '/backend-master harden' to remediate.")
        sys.exit(1)
    else:
        print("✅ Clean: Zero Backend Anti-Patterns detected.")
        sys.exit(0)

if __name__ == "__main__":
    main()
