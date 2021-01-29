FROM centos:7

RUN yum -y update && yum install -y java-1.8.0-openjdk-devel.x86_64 wget perl
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.272.b10-1.el7_9.x86_64
ENV export JAVA_HOME
ENV PATH=$PATH:$JAVA_HOME/bin
ENV export PATH

RUN wget http://mirror.navercorp.com/apache/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.tar.gz \
	&& tar zxvf apache-tomcat-9.0.41.tar.gz \
	&& mv apache-tomcat-9.0.41 /usr/local/tomcat9 \
	&& perl -p -i -e '$.==122 and print "<Connector protocol=\"AJP/1.3\" secretRequired=\"false\" address=\"0.0.0.0\" port=\"8009\" redirectPort=\"8443\" />\n"' /usr/local/tomcat9/conf/server.xml \
	&& perl -p -i -e '$.==158 and print "<Context path=\"\" docBase=\"\" reloadable=\"true\" />"' /usr/local/tomcat9/conf/server.xml \
	&& echo "hi worker1" > /usr/local/tomcat9/webapps/index.jsp \
	&& wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.19.tar.gz \
	&& tar zxvf mysql-connector-java-8.0.19.tar.gz 
WORKDIR /mysql-connector-java-8.0.19/ 
RUN cp mysql-connector-java-8.0.19.jar /usr/local/tomcat9/lib/

COPY weontae /usr/local/tomcat9/webapps/

ENTRYPOINT ["/usr/local/tomcat9/bin/catalina.sh", "run"]
EXPOSE 8080
