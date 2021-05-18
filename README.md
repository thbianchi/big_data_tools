
# Tools list

 - [*] Apache Impala			
 - [*] Apache Kudu			
 - [*] Apache Knox			
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
 - [x] Apache Atlas
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
 - [x] Apache Parquet				
 - [x] Apache Avro

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

## Parquet-tools

   ##### Running cat, head, schema, meta, dump, merge, rowcount, size, column-index
    sudo docker run -t nathanhowell/parquet-tools

## Avro-tools

   #### Running
    sudo docker run -t brandonstubbs/avro-tools

	Version 1.10.2 of Apache Avro
	Copyright 2010-2015 The Apache Software Foundation

	This product includes software developed at
	The Apache Software Foundation (https://www.apache.org/).
	----------------
	Available tools:
	    canonical  Converts an Avro Schema to its canonical form
		  cat  Extracts samples from files
	      compile  Generates Java code for the given schema.
	       concat  Concatenates avro files without re-compressing.
		count  Counts the records in avro files or folders
	  fingerprint  Returns the fingerprint for the schemas.
	   fragtojson  Renders a binary-encoded Avro datum as JSON.
	     fromjson  Reads JSON records and writes an Avro data file.
	     fromtext  Imports a text file into an avro data file.
	      getmeta  Prints out the metadata of an Avro data file.
	    getschema  Prints out schema of an Avro data file.
		  idl  Generates a JSON schema from an Avro IDL file
	 idl2schemata  Extract JSON schemata of the types from an Avro IDL file
	       induce  Induce schema/protocol from Java class/interface via reflection.
	   jsontofrag  Renders a JSON-encoded Avro datum as binary.
	       random  Creates a file with randomly generated instances of a schema.
	      recodec  Alters the codec of a data file.
	       repair  Recovers data from a corrupt Avro Data file
	  rpcprotocol  Output the protocol of a RPC service
	   rpcreceive  Opens an RPC Server and listens for one message.
	      rpcsend  Sends a single RPC message.
	       tether  Run a tethered mapreduce job.
	       tojson  Dumps an Avro data file as JSON, record per line or pretty.
	       totext  Converts an Avro data file to a text file.
	     totrevni  Converts an Avro data file to a Trevni file.
	  trevni_meta  Dumps a Trevni file's metadata as JSON.
	trevni_random  Create a Trevni file filled with random instances of a schema.
	trevni_tojson  Dumps a Trevni file as JSON.

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
* https://hub.docker.com/r/nathanhowell/parquet-tools
* https://hub.docker.com/r/brandonstubbs/avro-tools/tags?page=1&ordering=last_updated
