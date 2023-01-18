# **COMMANDS**

## **MIGRATIONS**

* scoop install migrate
* migrate create -ext sql -dir ./schema -seq init
* migrate -path ./schema -database "postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable" up




## **DOCKER**

* docker pull postgres //- pull image
* docker run --db-name -e POSTGRES_PASSWORD='passowrd' -p 5432:5436 -d --rm postgres//- run container
* docker ps //- list containers
* docker exec -it container_id /bin/bash //- connect to container

## POSTGRES IN CONTAINER

* psql -U postgres
* SELECT * FROM schema_migrations; //- check migrations
* UPDATE schema_migrations set version = "vernum" and dirty = false; //- set migration version





