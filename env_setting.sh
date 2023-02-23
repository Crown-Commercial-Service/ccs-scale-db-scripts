# Title       Environment variables to support the local database creation scripts
# Date        October 5th 2022
# Author      Nathan Topping

# NOTE: You may need to change the "USERNAME" setting to suit your local postgres setup

if [ -z "$DATABASE" ]; then
	export DATABASE=agreements
fi

if [ -z "$SERVER" ]; then
	export SERVER=127.0.0.1
fi

if [ -z "$PORT" ]; then
	export PORT=5432
fi

if [ -z "$SCHEMA" ]; then
	export SCHEMA=ccs_agreements
fi

if [ -z "$USERNAME" ]; then
	export USERNAME=postgres
fi

echo "using database $SERVER:$PORT:$DATABASE:$SCHEMA:$USERNAME"