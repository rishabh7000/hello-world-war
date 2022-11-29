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
        stage('my deploy') {
        agent {label 'server'} 
            steps {
                sh 'sudo ssh slave@172.31.3.6'
                sh 'sudo scp -R /workspace/myfirstpipe/target/hello-world-war-1.0.0.war slave172.31.3.6:/workspace/myfirstpipe/webapps'
            }
        }    
    }
}
