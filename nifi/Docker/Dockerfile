FROM apache/nifi:1.23.2
USER root
RUN mkdir /lib/jdbc
WORKDIR /lib/jdbc
COPY sqljdbc_12.10.1.0_enu.tar.gz .
RUN tar xvzf sqljdbc_12.10.1.0_enu.tar.gz
RUN cp ./sqljdbc_12.10/enu/jars/mssql-jdbc-12.10.1.jre8.jar ./



WORKDIR ${NIFI_HOME}
#COPY start.sh ../scripts 
#RUN chmod +x "../scripts/start.sh"

USER nifi

EXPOSE 8080 8443 10000 8000
ENTRYPOINT ["../scripts/start.sh"]