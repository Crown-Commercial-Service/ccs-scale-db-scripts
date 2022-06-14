#!/bin/bash
#
# Convenience provisioning script for clearing and re-provisioning the Tenders DB schema into GOV.UK PaaS DB instances via Conduit
# Must be logged into the target space via CF CLI
# 
# Uaage (env is CF space environment alias, e.g. sbx1, sbx2, dev, int etc): 
# $ env=sbx2 ./provision-tenders-api-database.sh
#
set -meo pipefail

# Truncate temp combined file
: > .combined.sql

# Array order must be maintained
declare -a FILES_ARRAY=(\
    "drop_tables.sql" \
    "ddl.sql" \
    "update_v1.sql" \
    "update_v2.sql" \
    "update_v3.sql" \
    "update_v4.sql" \
    "update_v5.sql" \
    "update_v6.sql" \
    "update_v7.sql" \
    "update_v8.sql" \
    "update_v9.sql" \
    "update_v10.sql" \
    "update_v11.sql" \
    "update_v12.sql" \
    "update_v13.sql" \
    "update_v14.sql" \
)

for i in ${FILES_ARRAY[@]}; do cat $i >> .combined.sql;done

cf conduit ${env}-ccs-scale-cat-tenders-pg-db  -- psql <  .combined.sql
