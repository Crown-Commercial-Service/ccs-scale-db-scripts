#!/bin/bash

# Create a Guided Match Database via SSH Tunnel.
# 
# Prerequisites:
#   - Create ~/.pgpass file to hold authentication details
#     - *:*:*:sysadmin:PASSWORD
#     - https://www.postgresql.org/docs/current/libpq-pgpass.html
#   - An SSH tunnel has been established to the remote database via an EC2 bastion host, such that it appears as a local DB
#     - Using a command similar to:
#     - ssh -i  {ENV}-bastion-key.pem -L 5432:{RDS_ENDPOINT}:5432 ubuntu@{BASTION_EC2_IP}


export SERVER=localhost
export PORT=5432
export DATABASE=guided_match
export USERNAME=<<FILL THIS IN>>

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ../reset_setup/drop_tables.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ../core_structure/create_tables.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ../core_structure/apply_constraints.sql

cd ../patches
for FILE in *; do psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f $FILE; done