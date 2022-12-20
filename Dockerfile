FROM tomcat

RUN mv webapps webapps2 && \
    mv webapps.dist webapps

RUN rm -rf webapps2

COPY target/*.jar ./webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]