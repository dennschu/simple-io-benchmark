#!/usr/bin/env bash

SCRATCHPATH="${1}"


echo 'BENCHMARK'
echo ''
echo "SCRATCHPATH: ${SCRATCHPATH}"

echo ''
echo ''
echo 'Run tree -L 3'
{ time tree -L 3 "${SCRATCHPATH}" > /dev/null; } 2>&1 | cat
{ time tree -L 3 "${SCRATCHPATH}" > /dev/null; } 2>&1 | cat
{ time tree -L 3 "${SCRATCHPATH}" > /dev/null; } 2>&1 | cat

echo ''
echo ''
echo 'Run blogbench'

if [ ! -d "${SCRATCHPATH}/__blogbench" ]; then
  mkdir "${SCRATCHPATH}/__blogbench"
fi

bin/blogbench -d "${SCRATCHPATH}/__blogbench"
