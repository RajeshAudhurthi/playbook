FROM tomcat:8
VOLUME /var/log
EXPOSE 8080
CMD ["catalina.sh","run"]