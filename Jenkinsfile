pipeline {
    agent {label 'slav'} 
    stages {
        stage('my Build') { 
            steps {
                sh 'ls'
                sh 'mvn package'
                sh 'sudo scp -R /home/slave/workspace/myfirstpipe/target/hello-world-war-1.0.0.war ubuntu@172.31.1.204:/opt/tomcat/webapps'
            }
        }    
        stage( 'my deploy' ) {
        agent {label 'server'} 
            steps {
               sh 'sh /opt/tomcat/bin/shutdown.sh'
               sh 'sh /opt/tomcat/bin/startup.sh' 
            }
        }    
    }
}
