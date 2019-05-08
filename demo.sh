#!/bin/sh

set -ex

BUF=$(cat)

DIR=$(dirname $0)
if echo $BUF | grep -q "test$"; then
  echo $BUF | ${DIR}/dump-environment.sh
else
  echo $BUF | ${DIR}/require-jira-issue.sh
fi
