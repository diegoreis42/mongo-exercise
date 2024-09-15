#!/bin/bash

mongoimport --db northwind --collection orders --file /imports/orders.json
mongoimport --db northwind --collection customers --file /imports/customers.json
mongoimport --db northwind --collection employees --file /imports/employees.json
mongoimport --db northwind --collection products --file /imports/products.json
