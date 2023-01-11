docker network create kong-net
docker-compose up --build -d

sleep 12
docker run -v --rm --network="kong-net" pantsel/konga:latest -c prepare -a postgres -u postgres://konguser:passwd@db:5432/db_konga
sleep 12
docker run -v --rm --network="kong-net" -e "KONG_DATABASE=postgres" -e "KONG_PG_HOST=db" -e "KONG_PG_DATABASE=db_kong" -e "KONG_PG_USER=konguser" -e "KONG_PG_PASSWORD=passwd" kong:latest kong migrations bootstrap


