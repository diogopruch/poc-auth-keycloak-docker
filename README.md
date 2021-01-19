# poc-auth-keycloak-docker
Repositório para criação da imagem Docker do Keycloak para POC de autenticação de usuários do TCC de Arquitetura de SW

Para rodar baixe o projeto, instale o Docker e execute as seguintes linhas no diretório onde o projeto foi baixado:

> docker build --tag=keycloak-poc-auth .

> docker run -p 8081:8081 --name keycloak12 -it keycloak-poc-auth
