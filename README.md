# Projeto Demo Spring Vault

Aplicação de demonstração do funcionamento e integração de projetos Spring Boot com Vault HashCorp


## Requisitos
* Docker instalado na máquina
* JDK 8
* Maven

## Desenvolvimento
* Executar os comandos abaixo para preparar o ambiente de desenvolvimento

```shell
cd pasta_do_projeto/script/hashcorp_vault

./start_hashcorp_vault_docker_container.sh

./profile_secrets.sh

cd pasta_do_projeto/script/mongodb

./start_mongodb_dev_docker_container.sh

./start_mongodb_prod_docker_container.sh

```

Para mudar alguma senha, porta ou nome de container, deve-se modificar os arquivos com nome variable.sh





