docker-compose down
docker image rm kong_db
docker volume rm kong_persist_volume
docker network rm kong-net

