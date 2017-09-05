#!/bin/sh
docker-compose pull
docker-compose up -d
echo "sleeping..."
sleep 30

echo "=== ping?"
docker exec saltstack-mastertje salt "*" test.ping

echo "=== inspecting"
docker inspect saltstack-mastertje | grep IPAdd

echo "=== ipv4 grain?"
sudo docker exec saltstack-mastertje salt "*" grains.items|grep -C2 ipv4
