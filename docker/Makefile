ROOT_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST)))/..)

build:
	cd $(ROOT_DIR) && docker-compose build

reset:
	cd $(ROOT_DIR) && docker-compose down --volumes
