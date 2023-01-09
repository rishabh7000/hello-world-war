pipeline {
    agent {label 'play'}
    stages {
        stage('my Build') {
            steps {
                sh "echo ${BUILD_VERSION}"
                sh 'docker build -t tomcat_build:${BUILD_VERSION} --build-arg BUILD_VERSION=${BUILD_VERSION} .'
            }
        }  
        stage('publish stage') {
            steps {
                sh "echo ${BUILD_VERSION}"
                sh 'docker login -u rishabh7000 -p Elvish@321'
                sh 'docker tag tomcat_build:${BUILD_VERSION} rishabh7000/tomcat:${BUILD_VERSION}'
                sh 'docker push rishabh7000/tomcat:${BUILD_VERSION}'
            }
        } 
        stage( 'my deploy' ) {
        agent {label 'ansible'} 
            steps {
               sh 'docker pull rishabh7000/tomcat:${BUILD_VERSION}'
               sh 'docker rm -f mytomcat'
               sh 'docker run -d -p 8080:8080 --name mytomcat rishabh7000/tomcat:${BUILD_VERSION}'
            }
        }    
    } 
}
