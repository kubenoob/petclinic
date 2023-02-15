FROM tomcat:8.5.85
COPY *.war /opt/tomcat/webapps/ROOT.war
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]