init: docker-build docker-up composer-install migrate

docker-build:
	docker-compose build 
docker-up:
	docker-compose up -d	
composer-install: 
	docker-compose run --rm php composer install
migrate:
	docker-compose run --rm php php bin/console doctrine:migrations:migrate

