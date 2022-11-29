pipeline {
    agent {label 'slav'} 
    stages {
        stage('my Build') { 
            steps {
                sh 'ls'
                sh 'mvn package'
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
