#! /bin/sh
docker-compose -f docker-compose-hadoop.yaml up --scale hdfs-datanode=$1 -d
