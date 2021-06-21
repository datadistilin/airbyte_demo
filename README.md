# Airbyte Demo

Helps evaluate Airbyte quickly by setting up demo source and destination DBs.

## Installation

1. Update the value of `DEMO_DATABASE_PASSWORD` in .env file
2. Run `make` to fetch airbyte and add the demo db credentials
3. Run `make install` to install and start airbyte
4. Airbyte should be available at http://localhost:8000 if install was successful
5. Setup source and destination in Airbyte
   - Get ip address using `docker inspect airbyte-demo-db`
   - The port should be set to 5432
   - Source DB name is demo_source, while destination DB name is demo_destination
6. Run `make stop` and `make start` to stop/restart the containers
7. Run `make uninstall` to remove all containers and volumes
8. Run `make clean` to remove directories created by Airbyte

## Source Data

The Source DB dump contains data from https://github.com/fishtown-analytics/jaffle_shop
