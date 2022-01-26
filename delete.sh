#!/usr/bin/env sh
docker exec postgres_container psql -c "truncate table first_table cascade;" habrdb habrpguser