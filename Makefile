.PHONY: build push

service =

build:
	docker-compose build $(service)

push:
	docker-compose push $(service)
