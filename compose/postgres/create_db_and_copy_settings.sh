#!/bin/bash
set -e

POSTGRES="psql --username postgres"

# for COMMODITY_DB in $POSTGRES_COMMODITIES_DB
# do
#   echo "Creating database: ${COMMODITY_DB}"
#   $POSTGRES -c "CREATE DATABASE ${COMMODITY_DB} OWNER ${POSTGRES_USER};"
# done
#
# # Create database for luigi
# echo "Creating database: ${POSTGRES_LUIGI_DB}"
# $POSTGRES -c "CREATE DATABASE ${POSTGRES_LUIGI_DB} OWNER ${POSTGRES_USER};"

# Create database for equities
echo "Creating database: django_markdown"
$POSTGRES -c "CREATE DATABASE django_markdown OWNER postgres;"
