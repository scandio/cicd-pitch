#! /usr/bin/env bash

echo "Running test script for index.html from $(pwd)"

INDEX_HTML_PATH="$(pwd)/../index.html"
STRING_TO_FIND="Hello"

if grep -q "$STRING_TO_FIND" "$INDEX_HTML_PATH"; then
  echo "Website contains a greeting."
  exit 0
fi

echo "Website does not contain a greeting."
exit 1