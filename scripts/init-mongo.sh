#!/bin/bash

# Import the data
mongoimport --db northwind --collection orders --file /imports/orders.json
mongoimport --db northwind --collection customers --file /imports/customers.json
mongoimport --db northwind --collection employees --file /imports/employees.json
mongoimport --db northwind --collection products --file /imports/products.json

# Run queries
mkdir -p /queries
mkdir -p /output

for query_file in /queries/lista_1*.js; do
  query_name=$(basename "$query_file" .js)

  cat $query_file | mongosh northwind --eval --quiet  | sed 's/^northwind> //' > "/output/lista_1/${query_name}-result.json"

  echo "Executed $query_file and saved the result to /output/lista_1/${query_name}.json"
done

for query_file in /queries/lista_2*.js; do
  query_name=$(basename "$query_file" .js)

  cat $query_file | mongosh northwind --eval --quiet  | sed 's/^northwind> //' > "/output/lista_2/${query_name}-result.json"

  echo "Executed $query_file and saved the result to /output/lista_2${query_name}.json"
done

