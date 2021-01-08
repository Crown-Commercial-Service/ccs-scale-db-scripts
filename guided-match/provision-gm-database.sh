#!/bin/bash

# Create and Populate a Guided Match Database.
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

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ddl.sql


# Run DDL version updates in order
for i in `ls -v ./ddl-versions`
do	
  psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ./ddl-versions/$i
done

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f dml.sql

# Run DML version updates in order
for i in `ls -v ./dml-versions`
do	
  psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ./dml-versions/$i
done

