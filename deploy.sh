#!/bin/bash
apt install maven
#delete the existing folder/code to execute the fresh command
rm -rf hello-world-war
#need to clone first
git clone https://github.com/prajwal1327/hello-world-war.git
#switch to hello-world-war
cd  hello-world-war
#run the maven package
mvn package
cp -R target/hello-world-war-1.0.0.war assign/tomcat/webapps/
#stop and start the tomcat
assign/tomcat/bin/shutdown.sh
assign/tomcat/bin/startup.sh
sleep 2
up #link to startup.sh
