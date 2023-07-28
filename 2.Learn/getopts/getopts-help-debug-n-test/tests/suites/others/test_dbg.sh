#!/usr/bin/env bash

echo -n 'Testing debugging'

# expecting [[ "$0" == "${BASH_SOURCE[0]}" ]] && exit 0 || return 0
../getopts-help-debug-n-test.sh -d >/dev/null || exit 1
var=$(../getopts-help-debug-n-test.sh -d) && [[ ${var:0:24} == $'flag d\nTesting debugging' ]] || exit 1

[[ "$0" == "${BASH_SOURCE[0]}" ]] && exit 0 || return 0
