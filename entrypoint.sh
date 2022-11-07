#!/usr/bin/env bash

set -eo pipefail

npx depcheck@${INPUT_VERSION} --ignores="${INPUT_IGNORES}" "${INPUT_DIR}" 2>&1 && exit_status=$? || exit_status=$?

echo "::set-output name=exit_code::$exit_status"

exit $exit_status
