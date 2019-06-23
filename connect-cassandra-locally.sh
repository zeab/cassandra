IP=$(docker inspect -f '{{ .NetworkSettings.IPAddress }}' cassandra)
docker run -i -t --rm cassandra cqlsh $IP
