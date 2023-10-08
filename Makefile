setup:
	@make build
	@make up 
	@make composer-update
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
up:
	docker-compose up -d
composer-update:
	docker exec laravel-docker bash -c "composer update"
composer-auth:
	docker exec laravel-docker bash -c "composer require laravel/ui"
	docker exec laravel-docker bash -c "php artisan ui bootstrap --auth"	
data:
	docker exec laravel-docker bash -c "php artisan migrate"
	docker exec laravel-docker bash -c "php artisan db:seed"