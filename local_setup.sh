# Create and Populate the Agreements Service and Guided Match Database on a user's local machine.
#
# NOTE: You may need to adjust the USERNAME variable in env_setting.sh in order to run this:

source env_setting.sh

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f guided-match/reset_setup/drop_tables.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f guided-match/core_structure/create_tables.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f guided-match/core_structure/apply_constraints.sql

cd guided-match/patches
for FILE in *; do psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f $FILE; done

cd ../../

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f agreements-service/reset_setup/drop_tables.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f agreements-service/core_structure/create_tables.sql

psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f agreements-service/core_structure/apply_constraints.sql

cd agreements-service/patches
for FILE in *; do psql -h $SERVER -d $DATABASE -p $PORT -U $USERNAME -a -q -c "set schema '$SCHEMA'" -f $FILE; done