
if [ -z "$DATABASE" ]; then
	export DATABASE=postgres
fi

if [ -z "$SERVER" ]; then
	export SERVER=127.0.0.1
fi

if [ -z "$PORT" ]; then
	export PORT=5432
fi

if [ -z "$SCHEMA" ]; then
	export SCHEMA=ccs_cat
fi

echo "using database $SERVER:$PORT:$DATABASE:$SCHEMA"

if [ -z "$USERNAME" ]; then
	echo "username must be set using export USERNAME=<username>"
	exit 1;
fi

