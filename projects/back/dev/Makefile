DOCKER_BACK_DEV = "docker-compose.yml"

clean-dev:
	rm -rf ./projects/back/dev/app
clone-dev:clean-dev
	git clone https://xxxxxx@git.java-mentor.com/xxx/think-platfotm -b dev ./app
restart-dev:clone-dev
	docker-compose -f ${DOCKER_BACK_DEV} up --build -d back-server-dev
logs-dev:
	docker logs back-server-dev
config-dev:
	docker-compose -f ${DOCKER_BACK_DEV} config

status:
	docker ps -a
