#!/usr/bin/env bash

set -o pipefail

yarn global add depcheck@"${INPUT_VERSION}"

OUTPUT=$(depcheck --ignores="${INPUT_IGNORES}" "${INPUT_DIR}" 2>&1) && exit_status=$? || exit_status=$?
echo "$OUTPUT"

echo "::set-output name=exit_code::$exit_status"

exit $exit_status
