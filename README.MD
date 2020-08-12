### Развертывание
* Установить: git, docker, docker-compose, make.  
[**install-requirements.bash**](https://git.java-mentor.com/Alie/think-devops/-/blob/master/script/install-requirements.bash)
* Склонировать репозиторий  
**git clone https://git.java-mentor.com/Alie/think-devops -b master**

* выполнить из корня проекта **make restart-release**

Поднимется контейнер с postgres + контейнер с бэк-сервером

---
---

В данный момент Jenkins использует этот репозиторий для автоматического развертывания в джобе ThinkBackRelease.

**Project root directory** - var/lib/jenkins/workspace/${JenkinsJobName}  
В данный момент ${JenkinsJobName} = ThinkBackRelease
### Команды Make
Выполняются из корня проекта
#### Release/Dev
**make clean-release** - удаляет папку с проектом ./projects/back/release/app

**make clone-release** - клонирует проект в папку ./projects/back/release/app и включает ветку release. Содержит команду clean-release

**make restart-release** - пересобирает и запускает контейнер с проектом в фоновом режиме. Содержит команду сlone-release.

**make logs-release** - показывает логи контейнера

#### Test
**make clean-test** - останавливает и удаляет все тестовые контейнеры. Удаляет папку с проектом ./projects/back/test/app

**make branch_name=${sourceBranchName}** - клонирует проект в папку ./projects/back/test/app и включает ветку ${sourceBranchName}

**make test** - пересобирает и запускает контейнер с тестами. Из команды нельзя выйти пока не закончатся тесты. Результаты тестов будут в логах.