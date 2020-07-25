#!/bin/bash
docker-compose down --rmi all -v
docker rmi local/phraseanet-worker:latest
docker rmi local/phraseanet-elasticsearch:latest
docker rmi local/phraseanet-fpm:latest
docker rmi local/phraseanet-nginx:latest
docker rmi local/phraseanet-db:latest
docker system prune
