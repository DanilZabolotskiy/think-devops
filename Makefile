DOCKER_BACK_TEST = "projects/back/test/docker-compose.yml"
DOCKER_BACK_RELEASE = "projects/back/release/docker-compose.yml"

clone-test:
	git clone https://xxx:xxx@git.java-mentor.com/xxx/think-platfotm -b $(branch_name) ./projects/back/test/app
test:
	docker-compose -f ${DOCKER_BACK_TEST} up --build back-server-test
clean-test:
	docker-compose -f ${DOCKER_BACK_TEST} down
	rm -rf ./projects/back/test/app
logs-test:
	docker logs back-server-test
config-test:
	docker-compose -f ${DOCKER_BACK_TEST} config


clean-release:
	rm -rf ./projects/back/release/app
clone-release:clean-release
	git clone https://xxx:xxx@git.java-mentor.com/xxx/think-platfotm -b release ./projects/back/release/app
restart-release:clone-release
	docker-compose -f ${DOCKER_BACK_RELEASE} up --build -d back-server-release
logs-release:
	docker logs back-server-release
config-release:
	docker-compose -f ${DOCKER_BACK_RELEASE} config



status:
	docker ps -a
