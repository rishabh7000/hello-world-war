pipeline {
    agent {label 'slav'} 
    stages {
        stage('my Build') { 
            steps {
                sh 'ls'
                sh 'sudo apt update'
                sh 'sudo apt install maven'
                sh 'mvn package'
            }
        }        
    }
}
