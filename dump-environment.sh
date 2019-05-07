#!/bin/sh

line="=================="
sep="------------------"

echo $line
date

echo $line
echo PROG: "$0"
echo ARGS
for arg; do
  echo "+ $arg"
done

echo $line
echo ENV
env

echo $line
echo PWD: "$(pwd)"
ls -la

echo $line
echo STDIN
while read before_sha after_sha ref; do
  echo $line
  echo $before_sha $after_sha $ref
  echo $sep
  git cat-file -p $before_sha; echo
  echo $sep
  git cat-file -p $after_sha; echo
  echo $sep
  echo -n "$ref "; git rev-parse $ref
done

echo $line
date

echo $line
exit 0
