#!groovy

properties([disableConcurrentBuilds()])

timestamps {
    node {
            stage ('Restart back') {
                sh 'if [ `ls . | wc -l` -eq 0 ] ; then  git clone https://think-devops:vivec3769@git.java-mentor.com/Alie/think-devops . ; else sudo git pull; fi'
                sh 'sudo make restart-release'
            }
    }
}