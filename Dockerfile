FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y --force-yes openjdk-7-jre-headless wget
RUN sudo apt-get update

RUN apt-get install -y tomcat7
EXPOSE 8080








#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes openjdk-7-jre-headless wget

#RUN sudo apt-get -y install tomcat7

#RUN sudo echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/default/tomcat7

ADD EmployeeApplication.war /var/lib/tomcat7/webapps/

#EXPOSE 8080

#CMD sudo service tomcat7 restart && tail -f /var/lib/tomcat7/logs/catalina.out
 

