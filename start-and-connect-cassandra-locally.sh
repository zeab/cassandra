docker run -d --name=cassandra --restart unless-stopped --log-opt max-size=25m -e DS_LICENSE=accept datastax/dse-server
IP=$(docker inspect -f '{{ .NetworkSettings.IPAddress }}' cassandra)
echo "sleeping 2 min to let cassandra come up"
sleep 2m
docker run -i -t --rm cassandra cqlsh $IP
