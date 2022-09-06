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
# $ ./provision-tenders-api-database.sh
# 

export SERVER=127.0.0.1
export PORT=5432

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f drop_tables.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ddl.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v1.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v2.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v3.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v4.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v5.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v6.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v7.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v8.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v9.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v10.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v11.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v12.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v13.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v14.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v15.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v16.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v17.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v18.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f udpate_v19.sql
