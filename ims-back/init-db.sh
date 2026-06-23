#!/bin/bash
set -e

# Configuration
MIGRATIONS_DIR="./db"
DIRECTION=${migrate}

# Execute
if [$DIRECTION=down]; then
    find "$MIGRATIONS_DIR" -maxdepth 1 -name "*.sql" | sort -r | while read -r FILE_PATH; do

        FILE_NAME=$(basename "$FILE_PATH")
        echo "Running UP migration for $FILE_NAME..."
        SQL_CONTENT=$(awk '/--\+down/{flag=1;next}flag' "FILE_PATH")

        $SQL_CONTENT | psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -p "$POSTGRES_PASSWORD"
    done
else
    find "$MIGRATIONS_DIR" -maxdepth 1 -name "*.sql" | sort | while read -r FILE_PATH; do

        FILE_NAME=$(basename "$FILE_PATH")
        echo "Running UP migration for $FILE_NAME..."
        SQL_CONTENT=$(awk '/--\+up/{flag=1;next}/--\+down/{flag=0}flag' "$FILE_PATH")
        
        $SQL_CONTENT | psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -p "$POSTGRES_PASSWORD"
    done
fi

echo "Migration completed."