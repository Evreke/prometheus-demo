#!/usr/bin/env sh
docker exec postgres_container psql -c "insert into first_table
                                        select data.id, case when data.id % 2 = 0 then now()::text else null end, case when data.id % 2 = 0 then 'test_string'::text else null end, null
                                        from generate_series(1, 100000) as data(id);" habrdb habrpguser