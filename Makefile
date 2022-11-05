start:
	docker-compose up -d

console:
	docker exec -it rorapp /bin/sh

setup:
	docker exec -it rorapp rails db:create
	docker exec -it rorapp rails db:migrate
	docker exec -it rorapp rails db:seed
