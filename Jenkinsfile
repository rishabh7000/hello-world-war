pipeline {
    agent {label 'server'} 
    stages {
        stage('my Build') { 
            steps {
                sh "echo ${BUILD_NUMBER}"
                sh 'mvn deploy'
            }
        }    
        stage( 'my deploy' ) {
        agent {label 'slavee'} 
            steps {
               sh 'curl -u rishabhfrog@gmail.com:Elvish@321 -O https://rishabhfrog.jfrog.io/artifactory/libs-release-local/com/efsavage/hello-world-war/${BUILD_NUMBER}/hello-world-war-${BUILD_NUMBER}.war'
               sh 'cp -R hello-world-war-${BUILD_NUMBER}.war /opt/tomcat/webapps/' 
               sh 'sudo sh /workspace/assign/tomcat/bin/shutdown.sh'
               sh 'sleep 2'
               sh 'sudo sh /opt/tomcat/bin/startup.sh' 
            }
        }    
    } 
}
