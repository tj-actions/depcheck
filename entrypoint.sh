#!/usr/bin/env bash

set -o pipefail


DIR=$2
IGNORE=$3

OUTPUT=$(depcheck --ignores="${IGNORE}" "${DIR}" 2>&1) && exit_status=$? || exit_status=$?
echo "$OUTPUT"

echo "::set-output name=exit_code::$exit_status"

exit $exit_status
