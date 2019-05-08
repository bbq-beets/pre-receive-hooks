#!/bin/sh

BUF=$(</dev/stdin)

if echo $BUF | grep -q "debug$"; then
  echo $BUF | ./dump-environment.sh
else
  echo $BUF | ./require-jira-issue.sh
fi
