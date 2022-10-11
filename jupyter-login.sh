#! /bin/sh
docker exec notebook jupyter server list | sed 's/notebook/127.0.0.1/g' | sed 's/\:\:.*//g'

