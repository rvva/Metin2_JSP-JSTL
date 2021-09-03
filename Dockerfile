FROM tomcat:8.5.69

# remove all management and example apss
RUN rm -rfv /usr/local/webapps/*
# add web war
ADD ./CloudMT2/dist/CloudMT2.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
