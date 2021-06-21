
AIRBYTE_VERSION=v0.26.1-alpha
AIRBYTE_REPO=https://github.com/airbytehq/airbyte.git

init:
	git clone -c advice.detachedHead=false --depth 1 --branch $(AIRBYTE_VERSION) $(AIRBYTE_REPO)
	cat .env >> airbyte/.env

install:
	cd airbyte && docker-compose -f docker-compose.yaml -f ../docker-compose.demo.yaml up -d

stop:
	cd airbyte && docker-compose -f docker-compose.yaml -f ../docker-compose.demo.yaml stop

start:
	cd airbyte && docker-compose -f docker-compose.yaml -f ../docker-compose.demo.yaml start

uninstall:
	cd airbyte && docker-compose -f docker-compose.yaml -f ../docker-compose.demo.yaml down -v

clean:
	\rm -rf airbyte /tmp/airbyte_local
