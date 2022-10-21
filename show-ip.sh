#! /bin/sh
PUBLICIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
TOKEN=$(docker exec notebook jupyter server list)
echo ""
echo $TOKEN | sed "s/notebook/${PUBLICIP}/g" | sed 's/\:\:.*//g' | sed "s/Currently running servers:/Jupyter Public IP   -/g"
echo ""
echo $TOKEN | sed 's/notebook/127.0.0.1/g' | sed 's/\:\:.*//g'  | sed "s/Currently running servers:/Jupyter Local IP    -/g"
echo ""
echo "Name Node Public IP - http://${PUBLICIP}:9870"
echo ""
echo "Name Node Local IP  - http://127.0.0.1:9870"
echo ""
