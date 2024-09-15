#!/bin/bash

mkdir -p /queries
mkdir -p /output

for query_file in /queries/*.js; do
  query_name=$(basename "$query_file" .js)

  cat $query_file | mongosh northwind --eval --quiet > "/output/${query_name}-result.json"

  echo "Executed $query_file and saved the result to /output/${query_name}.json"
done
