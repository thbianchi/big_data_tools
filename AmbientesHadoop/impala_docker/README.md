## Carregar dados
#### Introdução
   * O procedimento abaixo demostrará como carregar uma base no HDFS para ser utilizada nos testes do impala.

### No terminal, no diretorio docker_impala, execute o comando abaixo para acessar o container
          docker-compose exec impala-server bash

### Faça o download da base de exemplo "tips.csv"
         curl -L https://raw.githubusercontent.com/pandas-dev/pandas/master/doc/data/tips.csv -o /tmp/tips.csv

### Execute o comando abaixo para criar uma tabela
         impala-shell -q '
              CREATE TABLE default.tips (
              `total_bill` FLOAT,
              `tip` FLOAT,
              `sex` STRING,
              `smoker` STRING,
              `day` STRING,
              `time` STRING,
              `size` TINYINT)
              ROW FORMAT DELIMITED FIELDS TERMINATED BY ","
              LOCATION "hdfs:///var/lib/hadoop-hdfs/cache/hdfs/dfs/data/tips"
              TBLPROPERTIES("skip.header.line.count" = "1");'

### Execute o comando abaixo para enviar o arquivo tips.csv paradentro do HDFS
         hdfs dfs -put /tmp/tips.csv /var/lib/hadoop-hdfs/cache/hdfs/dfs/data/tips/ 

## Usuários e senhas

   ##### Hue
    Usuário: admin
    Senha: admin

## Exposed ports
* 8888 [EXT] - Apache Hue
* 7050 [EXT] - Apache Kudu. TabletServer. Kudu TabletServer RPC 
* 7051 [EXT] - Apache Kudu. Master. Kudu Master RPC port
* 8020 [INT] - Apache Hadoop HDFS. NameNode. fs.defaultFS
* 8050 [EXT] - Apache Kudu. TabletServer. Kudu TabletServer HTTP server port
* 8051 [EXT] - Apache Kudu. Master. Kudu Master HTTP server port
* 9083 [INT] - Apache Hive. Metastore. 
* 21000 [EXT] - Apache Impala. Impala Daemon. Used to transmit commands and receive results by impala-shell and version 1.2 of the Cloudera ODBC driver.
* 21050 [EXT] - Apache Impala. Impala Daemon. Used to transmit commands and receive results by applications, such as Business Intelligence tools, using JDBC, the Beeswax query editor in Hue, and version 2.0 or higher of the Cloudera ODBC driver.
* 22000 [INT] - Apache Impala. Impala Daemon. Internal use only. Impala daemons use this port to communicate with each other.
* 23000 [INT] - Apache Impala. Impala Daemon. Internal use only. Impala daemons listen on this port for updates from the statestore daemon.
* 23020 [INT] - Apache Impala. Catalog Daemon. Internal use only. The catalog daemon listens on this port for updates from the statestore daemon. 
* 24000 [INT] - Apache Impala. StateStore Daemon. Internal use only. The statestore daemon listens on this port for registration/unregistration requests.
* 25000 [EXT] - Apache Impala. Impala Daemon. Impala web interface for administrators to monitor and troubleshoot.
* 25010 [EXT] - Apache Impala. StateStore Daemon. StateStore web interface for administrators to monitor and troubleshoot. 
* 25020 [EXT] - Apache Impala. Catalog Daemon. Catalog service web interface for administrators to monitor and troubleshoot.
* 26000 [INT] - Apache Impala. Catalog Daemon. Internal use only. The catalog service uses this port to communicate with the Impala daemons.
* 50010 [INT] - Apache Hadoop HDFS. DataNode. dfs.datanode.address

## Reference data for ports:

* [CDH Ports](https://docs.cloudera.com/documentation/enterprise/latest/topics/cm_ig_ports.html)
