FROM jboss/keycloak:12.0.1

#Usuario administrador
RUN /opt/jboss/keycloak/bin/add-user-keycloak.sh -u diogo -p teste123

COPY import-realm.json /opt/jboss/keycloak/

COPY standalone.xml $JBOSS_HOME/standalone/configuration

CMD ["-b", "0.0.0.0", "-Dkeycloak.import=/opt/jboss/keycloak/import-realm.json", "-Djboss.socket.binding.port-offset=1" , "-Dkeycloak.frontendUrl=http://localhost:8081/auth"]


