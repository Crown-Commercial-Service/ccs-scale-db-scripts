#!/bin/bash

# Create and Populate an Agreements Database.
# 
# Prerequisites:
#   - Create ~/.pgpass file to hold authentication details
#     - *:*:*:sysadmin:PASSWORD
#     - https://www.postgresql.org/docs/current/libpq-pgpass.html
#   - An SSH tunnel has been established to the remote database via an EC2 bastion host, such that it appears as a local DB
#     - Using a command similar to:
#     - ssh -i  {ENV}-bastion-key.pem -L 5432:{RDS_ENDPOINT}:5432 ubuntu@{BASTION_EC2_IP}

set -meo pipefail

export SERVER=localhost
export PORT=5432
export DATABASE=agreements
export USERNAME=<<FILL THIS IN>>

# psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f drop_tables.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f ddl.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_commercial_agreements.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_role_types.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_contact_details.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_contact_point_reasons.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lots.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_organisations.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_people.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_route_to_market.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_sectors.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_trading_organisations.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_commercial_agreement_organisation_roles.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_organisation_roles.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_people_roles.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_rules.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_related_lots.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_rule_attributes.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_rule_transaction_objects.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_sectors.sql 
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_lot_route_to_market.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_commercial_agreement_documents.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_contact_point_lot_prs.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_contact_point_lot_ors.sql
psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -f create_contact_point_commercial_agreement_ors.sql


