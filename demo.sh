#!/bin/sh

set -e

BUF=$(</dev/stdin)

DIR=$(dirname $0)
if echo $BUF | grep -q "debug$"; then
  echo $BUF | ${DIR}/dump-environment.sh
else
  echo $BUF | ${DIR}/require-jira-issue.sh
fi
