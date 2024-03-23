
FROM tomcat:8.5-jdk8-openjdk
WORKDIR /usr/local/tomcat/webapps
COPY target/comp367-webapp.war ./ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]