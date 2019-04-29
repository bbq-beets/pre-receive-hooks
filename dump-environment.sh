#!/bin/sh

line="=================="

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
cat

echo $line
exit 0

