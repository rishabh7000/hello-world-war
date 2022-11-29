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
                sh 'scp -R /home/slave/workspace/tomcat/target/hello-world-war-1.0.0.war /home/slave/workspace/tomcat/webapps
                sh 'mvn package'
            }
        }    
    }
}
