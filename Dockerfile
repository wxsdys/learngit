FROM 168.61.4.1:5001/htzq/tomcat:8.5
#FROM 168.61.4.1:5001/htzq/centos73-jre8:jdk8
ENV MYSQL_PORT 3306
ENV MYSQL_DB persondb
ENV MYSQL_USER root
ENV MYSQL_PASSWORD root
      
RUN rm -rf /usr/local/tomcat/webapps/*
   
COPY target/demo.war /usr/local/tomcat/webapps/ROOT.war

COPY test.sh /usr/local/tomcat/webapps/test.sh

RUN chmod +x /usr/local/tomcat/webapps/test.sh

RUN cat /usr/local/tomcat/webapps/test.sh

CMD ["catalina.sh", "run"]
             
#test label version
Label version=4.0.0.1234

