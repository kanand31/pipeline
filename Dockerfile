FROM tomcat

COPY target/*.jar ./webapps

EXPOSE 8080

CMD ["catalina.sh","run"]