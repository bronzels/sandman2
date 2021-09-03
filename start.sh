#!/bin/sh

# Start sandman2

if [ "$DB_TYPE" = "sqlite" ]; then
    sandman2ctl $DB_TYPE+$DB_DRIVER:////$DATABASE $ARGS
else
    sandman2ctl $DB_TYPE+$DB_DRIVER://$USERNAME:$PASSWORD@$DB_HOST:$DB_PORT/$DATABASE $ARGS
fi
