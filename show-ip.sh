#! /bin/sh
PUBLICIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo ""
docker exec notebook jupyter server list | sed "s/notebook/${PUBLICIP}/g" | sed 's/\:\:.*//g' | sed "s/Currently running servers:/Jupyter Public IP/g"
echo ""
echo "Name Node Public IP"
echo "http://${PUBLICIP}:9870"
echo ""
docker exec notebook jupyter server list | sed 's/notebook/127.0.0.1/g' | sed 's/\:\:.*//g'  | sed "s/Currently running servers:/Local IP/g"
echo ""
echo "Name Node Local IP"
echo "http://127.0.0.1:9870"
echo ""
