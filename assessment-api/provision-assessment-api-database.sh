#!/bin/bash

# Create and Populate an tenders-api Database.
# 
# Prerequisites:
#   - Create ~/.pgpass file to hold authentication details
#     - *:*:*:sysadmin:PASSWORD
#     - https://www.postgresql.org/docs/current/libpq-pgpass.html
#   - An SSH tunnel has been established to the remote database via an EC2 bastion host, such that it appears as a local DB
#     - Using a command similar to:
#     - ssh -i  {ENV}-bastion-key.pem -L 5432:{RDS_ENDPOINT}:5432 ubuntu@{BASTION_EC2_IP}


export SERVER=127.0.0.1
export PORT=5432

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f drop_tables.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ddl.sql
