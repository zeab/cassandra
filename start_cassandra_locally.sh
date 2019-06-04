docker run --name=cassandra -d -e DS_LICENSE=accept datastax/dse-server
IP=$(docker inspect -f '{{ .NetworkSettings.IPAddress }}' cassandra)
echo "sleeping 2 min to let cassandra come up"
sleep 2m
docker run -i -t --rm cassandra cqlsh $IP
