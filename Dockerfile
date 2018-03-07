FROM centos
MAINTAINER jack
COPY jdk1.7.0_79 jdk1.7.0_79
ADD  springcloud-eureka.jar  springcloud-eureka.jar
ENV JAVA_HOME=/jdk1.7.0_79
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/springcloud-eureka.jar"]
