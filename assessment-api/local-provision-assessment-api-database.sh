#!/bin/bash

# Create and Populate an tenders-api Database.
# 
# Prerequisites:
#   - Create ~/.pgpass file to hold authentication details
#     - *:*:*:sysadmin:PASSWORD
#     - https://www.postgresql.org/docs/current/libpq-pgpass.html

source ../env_var.sh

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f disable_constraints.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f drop_tables.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f ddl.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f constraints.sql
