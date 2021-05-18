
# Tools list

 - [*] Apache Impala			
 - [*] Apache Kudu			
 - [*] Apache Knox			
 - [*] Apache Avro
 - [*] Apache Atlas			
 - [*] Apache Parquet				
 - [ ] Apache Ozone			
 - [ ] Key Trustee Server		
 - [ ] Schema Registry			
 - [ ] Apache Livy			
 - [ ] Ranger KMS			
 - [ ] Apache Zeppelin			
 - [ ] Cloudera Manager		
 - [ ] Apache ORC			
 - [ ] Apache Tez			
 - [ ] Apache Druid			
 - [ ] Apache Oozie			
 - [ ] Apache Accumulo			
 - [ ] Apache Phoenix			
 - [x] Apache Solr			
 - [x] Apache Ranger		
 - [x] Apache Spark			
 - [x] Apache Sqoop			
 - [x] YARN				
 - [x] Apache Zookeeper		
 - [x] Apache Hadoop			
 - [x] Apache HBase +conn, +indx	
 - [x] Apache Hive			
 - [x] Hive Metastore (HMS)		
 - [x] Hue				
 - [x] Apache Kafka			
 - [x] Kafka Connect			
 - [x] Kafka Streams
 - [x] Apache Airflow			

## SOFTWARES NECESSÁRIOS
#### Para a criação e uso do ambiente vamos utilizar git e docker
   * Instalação do Docker ToolBox no Windows faça o download em [Docker](https://drive.google.com/drive/folders/12iEACFEjaWfMcZr4c1o3YAbKE9kiH-lb?usp=sharing) ou o docker no [Linux](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
   *  [Instalação do git](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git)
   
*OBS: Existe um git na instação do Docker ToolBox, caso já tenha instalado não precisa instalar novamente*

#### Em um terminal/DOS, dentro diretório docker, realizar o clone do projeto no github
   git clone https://github.com/thbianchi/big_data_tools.git

### No terminal, no diretorio big_data_tools, executar o docker-compose
          docker-compose up -d        

### Verificar imagens e containers
 
         docker image ls

         docker container ls

### Parar um containers
         docker stop [nome do container]      

### Parar todos containers
         docker stop $(docker ps -a -q)
  
### Remover um container
         docker rm [nome do container]

### Remover todos containers
         docker rm $(docker ps -a -q)         

### Dados do containers
         docker container inspect [nome do container]

### Iniciar um container
         docker-compose up -d [nome do container]

### Iniciar todos os containers
         docker-compose up -d 

### Acessar log do container
         docker container logs [nome do container] 

## Acesso WebUI dos Frameworks
 
* HDFS *http://localhost:50070*
* Presto *http://localhost:8080*
* Hbase *http://localhost:16010/master-status*
* Mongo Express *http://localhost:8081*
* Kafka Manager *http://localhost:9000*
* Metabase *http://localhost:3000*
* Nifi *http://localhost:9090*
* Jupyter Spark *http://localhost:8889*
* Hue *http://localhost:8888*
* Spark *http://localhost:4040*
* Airflow *http://localhost:8181*

## Acesso por shell

   ##### HDFS

          docker exec -it datanode bash

   ##### HBase

          docker exec -it hbase-master bash

   ##### Sqoop

          docker exec -it datanode bash
        
   ##### Kafka

          docker exec -it kafka bash

## Acesso JDBC

   ##### MySQL
          jdbc:mysql://database/employees

   ##### Hive

          jdbc:hive2://hive-server:10000/default

   ##### Presto

          jdbc:presto://presto:8080/hive/default

## Usuários e senhas

   ##### Hue
    Usuário: admin
    Senha: admin

   ##### Metabase
    Usuário: bigdata@class.com
    Senha: bigdata123 

   ##### MySQL
    Usuário: root
    Senha: secret
   
   ##### MongoDB
    Usuário: root
    Senha: root
    Authentication Database: admin

## Documentação Oficial

* https://zookeeper.apache.org/
* https://kafka.apache.org/
* https://nifi.apache.org/
* https://prestodb.io/
* https://spark.apache.org/
* https://www.mongodb.com/
* https://www.metabase.com/
* https://jupyter.org/
* https://hbase.apache.org/
* https://sqoop.apache.org/
* https://hadoop.apache.org/
* https://hive.apache.org/
* https://gethue.com/
* https://github.com/yahoo/CMAK
* https://www.docker.com/
