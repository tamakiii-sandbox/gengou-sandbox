ROOT_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST)))/../..)

%:
	cd $(ROOT_DIR) && docker-compose run --rm ruby make $@
