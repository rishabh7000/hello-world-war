pipeline {
    agent {label 'slav'} 
    stages {
        stage('my Build') { 
            steps {
                sh 'ls'
                sh 'apt update'
                sh 'apt install maven'
                sh 'mvn package'
            }
        }        
    }
}
