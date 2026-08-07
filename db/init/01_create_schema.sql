-- Runs automatically the FIRST time the postgres container starts with an
-- empty data volume (see docker-compose.yml -> docker-entrypoint-initdb.d).
-- If you ever need to re-run this manually: `docker compose down -v` first
-- to wipe the volume, then `docker compose up -d` to trigger it again.

CREATE SCHEMA IF NOT EXISTS raw;


-- Ensures that there is something to inject the data into within the db.