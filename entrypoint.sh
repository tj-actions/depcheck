#!/usr/bin/env bash

set -o pipefail


EXTRA_ARGS=$2

OUTPUT=$(depcheck ${EXTRA_ARGS} 2>&1) && exit_status=$? || exit_status=$?
echo "$OUTPUT"

echo "::set-output name=exit_code::$exit_status"

exit $exit_status
