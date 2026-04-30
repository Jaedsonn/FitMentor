#!/bin/bash
set -e

echo 'Creating database...'

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE personal_p_development;
	GRANT ALL PRIVILEGES ON DATABASE personal_p_development TO postgres;
	CREATE DATABASE personal_p_test;
	GRANT ALL PRIVILEGES ON DATABASE personal_p_test TO postgres;
EOSQL