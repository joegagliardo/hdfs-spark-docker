#! /bin/sh
MODE="${1:-3}"

if [ "$MODE" == "4" ] ; then 
    echo "Start hadoop with 4 nodes"
    cp ./docker-compose-hadoop-4.yaml docker-compose-hadoop.yaml
elif [ "$MODE" == "5" ] ; then 
    echo "Start hadoop with 5 nodes"
    cp ./docker-compose-hadoop-5.yaml docker-compose-hadoop.yaml
elif [ "$MODE" == "6" ] ; then 
    echo "Start hadoop with 6 nodes"
    cp ./docker-compose-hadoop-6.yaml docker-compose-hadoop.yaml
else 
    echo "Start hadoop with 3 nodes"
    cp ./docker-compose-hadoop-3.yaml docker-compose-hadoop.yaml
fi

docker-compose -f ./docker-compose-hadoop.yaml up -d

