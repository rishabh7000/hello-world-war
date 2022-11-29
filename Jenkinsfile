pipeline {
    agent {label 'slav'} 
    stages {
        stage('my Build') { 
            steps {
                ls
                sh 'mvn package'
            }
        }        
    }
}
