FROM tomcat:8.5.85
COPY /home/runner/work/petclinic/petclinic/petclinic.war /usr/local/tomcat/webapps/ROOT.war
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]