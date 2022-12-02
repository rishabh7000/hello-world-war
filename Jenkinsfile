pipeline {
    agent {label 'server'} 
    stages {
        stage('my Build') { 
            steps {
                dir ("/home/ubuntu/rishabh") {
                    sh 'touch file1 file2'
                }
                sh "echo ${BUILD}"
                sh 'mvn deploy'
            }
        }    
        stage( 'my deploy' ) {
        agent {label 'slavee'} 
            steps {
               sh 'curl -u rishabhfrog@gmail.com:Elvish@321 -O https://rishabhfrog.jfrog.io/artifactory/libs-release-local/com/efsavage/hello-world-war/${BUILD}/hello-world-war-${BUILD}.war'
               sh 'cp -R hello-world-war-${BUILD}.war /home/slave/workspace/mybuild/tomcat/webapps/' 
               sh 'sudo sh /home/slave/workspace/mybuild/tomcat/bin/shutdown.sh'
               sh 'sleep 2'
               sh 'sudo sh /home/slave/workspace/mybuild/tomcat/bin/startup.sh' 
            }
        }    
    } 
}
