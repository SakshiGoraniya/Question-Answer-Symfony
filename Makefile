init: composer-install migrate

composer-install: 
	docker-compose run --rm php composer install
migrate:
	docker-compose run --rm php php bin/console doctrine:migrations:migrate

