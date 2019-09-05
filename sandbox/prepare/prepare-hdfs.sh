#!/bin/bash

# prepare HDFS
echo "Prepare HDFS..."
/usr/hdp/current/hadoop-hdfs-client/bin/hdfs dfs -mkdir /tmp/dataset
/usr/hdp/current/hadoop-hdfs-client/bin/hdfs dfs -mkdir /tmp/dataset/errors
/usr/hdp/current/hadoop-hdfs-client/bin/hdfs dfs -copyFromLocal /tmp/sandbox/dataset/* hdfs://sandbox-hdp:8020/tmp/dataset
/usr/hdp/current/hadoop-hdfs-client/bin/hdfs dfs -chmod -R 777 /tmp/dataset


