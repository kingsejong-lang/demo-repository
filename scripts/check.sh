#!/usr/bin/env bash
# Run every example and compare its output with expected.out next to it.
#
# Usage:
#   KSJ=/path/to/kingsejong scripts/check.sh           # check
#   KSJ=/path/to/kingsejong scripts/check.sh --update  # rewrite expected.out
#
# KSJ must be a path (not a bare command name) so the interpreter can find
# its bundled stdlib/ relative to its own location.
set -uo pipefail

KSJ="${KSJ:?set KSJ to the kingsejong binary path}"
update=0
[[ "${1:-}" == "--update" ]] && update=1

cd "$(dirname "$0")/.."
failed=0
total=0
difffile="$(mktemp)"
trap 'rm -f "$difffile"' EXIT

for src in lessons/*/main.ksj projects/*/main.ksj; do
    dir="$(dirname "$src")"
    total=$((total + 1))

    if ! actual="$("$KSJ" "$src" 2>&1)"; then
        echo "FAIL $dir: exited with an error"
        echo "$actual" | sed 's/^/    /'
        failed=$((failed + 1))
        continue
    fi

    if [[ $update -eq 1 ]]; then
        printf '%s\n' "$actual" > "$dir/expected.out"
        echo "UPDATE $dir"
        continue
    fi

    if ! diff -u "$dir/expected.out" <(printf '%s\n' "$actual") > "$difffile"; then
        echo "FAIL $dir: output differs from expected.out"
        sed 's/^/    /' "$difffile"
        failed=$((failed + 1))
        continue
    fi

    # The linter exits non-zero only on errors; warnings are printed but allowed.
    if ! lint="$("$KSJ" lint "$src" 2>&1)"; then
        echo "FAIL $dir: lint errors"
        echo "$lint" | sed 's/^/    /'
        failed=$((failed + 1))
        continue
    fi

    echo "ok   $dir"
done

echo
echo "$((total - failed))/$total passed"
[[ $failed -eq 0 ]]
