FROM apache/nifi:1.23.2
#FROM ryttelp/nifi:1.23.2o


ARG UID=1001
ARG GID=0
ENV NIFI_BASE_DIR=/opt/nifi
ENV NIFI_HOME ${NIFI_BASE_DIR}/nifi-current
ENV NIFI_TOOLKIT_HOME ${NIFI_BASE_DIR}/nifi-toolkit-current

USER root
RUN mkdir /lib/jdbc
WORKDIR /lib/jdbc
COPY sqljdbc_12.10.1.0_enu.tar.gz .
RUN tar xvzf sqljdbc_12.10.1.0_enu.tar.gz
RUN cp ./sqljdbc_12.10/enu/jars/mssql-jdbc-12.10.1.jre8.jar ./


#RUN useradd --shell /bin/bash -u ${UID} -g ${GID} -m nifi \
#    && chown -R ${UID}:${GID} ${NIFI_BASE_DIR} 
RUN chown -R ${UID}:${GID} ${NIFI_BASE_DIR} 

WORKDIR ${NIFI_HOME}
#COPY start.sh ../scripts 
#RUN chmod +x "../scripts/start.sh"

USER nifi

EXPOSE 8080 8443 10000 8000
ENTRYPOINT ["../scripts/start.sh"]