#! /bin/sh
MODE="${1:-P}"

if [ "$MODE" == "S" ] || [ "$MODE" == "s" ]; then 
    echo "Start hadoop in scale mode"
    cp ./docker-compose-hadoop-scale.yaml docker-compose-hadoop.yaml
else 
    echo "Start hadoop in persistent mode"
    cp ./docker-compose-hadoop-persistent.yaml docker-compose-hadoop.yaml
fi

docker-compose -f ./docker-compose-hadoop.yaml up -d

