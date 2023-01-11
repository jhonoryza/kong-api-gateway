# Setup Kong + Konga using Docker compose
1. This repository contains required file for running Kong + Konga using Docker to start run: `./start.sh`

2. then create new service to kong admin api `POST localhost:3701/services` with this payload
```
{
	"name": "admin-api",
	"host": "localhost",
	"port": 8001
}
```

3. then create new route to kong admin api `POST localhost:3701/services/admin-api/routes` with this payload
```
{
	"paths": ["/admin-api"]
}
```

4. login to konga `localhost:3711` then create new connection using loopback to `localhost:3700/admin-api`


