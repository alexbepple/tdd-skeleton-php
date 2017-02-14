.DEFAULT_GOAL := test

base_image := php:7.1-alpine
pwd := $(shell pwd)

install_dependencies:
	$(MAKE) composer cmd=install

composer_image_wd := /app
composer:
	docker run --rm -v $(pwd):$(composer_image_wd) composer/composer:1.1-alpine $(cmd)

php_image_wd := /app
test:
	docker run --rm -v $(pwd):$(php_image_wd) -w $(php_image_wd) --entrypoint $(php_image_wd)/vendor/bin/phpunit $(base_image) --colors=always tests

