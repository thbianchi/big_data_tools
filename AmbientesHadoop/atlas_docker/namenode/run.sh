#!/bin/bash

HADOOP_HOME=/opt/hadoop-2.7.4/
HADOOP_CONF_DIR/opt/hadoop-2.7.4/etc/hadoop/

namedir=`echo $HDFS_CONF_dfs_namenode_name_dir | perl -pe 's#file://##'`
if [ ! -d $namedir ]; then
  echo "Namenode name directory not found: $namedir"
  exit 2
fi

if [ -z "$CLUSTER_NAME" ]; then
  echo "Cluster name not specified"
  exit 2
fi

echo "remove lost+found from $namedir"
rm -r $namedir/lost+found

if [ "`ls -A $namedir`" == "" ]; then
  echo "Formatting namenode name directory: $namedir"
  $HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR namenode -format $CLUSTER_NAME
fi

echo "$RANGER_HDFS_PLUGIN_HOME/enable-hdfs-plugin.sh"

echo "ativando"
$RANGER_HDFS_PLUGIN_HOME/enable-hdfs-plugin.sh
echo "fim"

$HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR namenode