source .env;


NOW=$(date +"%Y-%m-%d_%H-%M-%S");

docker exec -i -e PGPASSWORD=${POSTGRES_PASSWORD} ${DB_CONTAINER_NAME} /usr/bin/pg_dump  -U ${POSTGRES_DB} ${POSTGRES_USER} |  gzip -9 > backup/postgres-backup-${NOW}.sql.gz