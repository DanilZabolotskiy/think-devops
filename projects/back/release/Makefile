DOCKER_BACK_RELEASE = "docker-compose.yml"

clean-release:
	rm -rf ./projects/back/release/app
clone-release:clean-release
	git clone https://alie:vivec3769@git.java-mentor.com/pahomov_dm/think-platfotm -b release ./app
restart-release:clone-release
	docker-compose -f ${DOCKER_BACK_RELEASE} up --build -d back-server-release
logs-release:
	docker logs back-server-release
config-release:
	docker-compose -f ${DOCKER_BACK_RELEASE} config



status:
	docker ps -a
