DOCKER_BACK_DEV = "docker-compose.yml"

clean-dev:
	rm -rf ./projects/back/dev/app
clone-dev:clean-dev
	git clone https://alie:vivec3769@git.java-mentor.com/pahomov_dm/think-platfotm -b dev ./app
restart-dev:clone-dev
	docker-compose -f ${DOCKER_BACK_DEV} up --build -d back-server-dev
logs-dev:
	docker logs back-server-dev
config-dev:
	docker-compose -f ${DOCKER_BACK_DEV} config

status:
	docker ps -a
