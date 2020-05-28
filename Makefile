.PHONY: build pull push

service =

build:
	docker-compose build $(service)

pull:
	bash scripts/pull.sh

push:
	docker-compose push $(service)
