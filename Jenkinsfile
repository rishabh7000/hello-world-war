pipeline {
    agent {label 'slav'} 
    stages {
        stage('my Build') { 
            steps {
                pwd
                sh 'mvn package'
            }
        }        
    }
}
