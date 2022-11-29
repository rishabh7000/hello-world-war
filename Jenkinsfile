pipeline {
    agent {label 'slav'} 
    stages {
        stage('my Build') { 
            steps {
                sh 'ls'
                sh 'mvn package'
                sh 'sudo scp -R hello-world-war-1.0.0.war ubuntu@172.31.1.204:/home/ubuntu'
            }
        }    
    }
}
