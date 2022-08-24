#!/bin/bash

# Create and Populate an tenders-api Database.
# 
# Prerequisites:
#   - Create ~/.pgpass file to hold authentication details
#     - *:*:database:username:password
#     - https://www.postgresql.org/docs/current/libpq-pgpass.html
#   - An SSH tunnel has been established to the remote database via the CF CLI, such that it appears as a local DB
#     - Using a command similar to:
#     cf ssh sbx2-ccs-scale-cat-nginx -L 5432:rdsbroker-abc123.eu-west-2.rds.amazonaws.com:5432
#
# Then run the script specifying the database and username to use:
# $ export USERNAME=...
# $ export DATABASE=...
# $ export SCHEMA=...
# $ ./local-provision-tenders-api-database.sh
# 

source ../env_var.sh

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f drop_tables.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f ddl.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v1.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v2.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v3.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v4.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v5.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v6.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v7.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v8.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v9.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v10.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v11.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v12.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v13.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v14.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v15.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v16.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v17.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f update_v18.sql
