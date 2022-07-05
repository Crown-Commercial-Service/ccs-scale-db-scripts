#!/bin/bash

# Create and Populate an Agreements Database.
# 
# Prerequisites:
#   - Create ~/.pgpass file to hold authentication details
#     - *:*:*:sysadmin:PASSWORD
#     - https://www.postgresql.org/docs/current/libpq-pgpass.html

set -meo pipefail

source ../env_var.sh

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f drop_tables.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f ddl.sql



