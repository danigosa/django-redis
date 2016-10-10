#!/usr/bin/env bash
docker-compose build
docker-compose up -d
DJANGO_REDIS_CONTAINER=`docker ps -aqf "name=django-redis"`
#docker exec -t $DJANGO_REDIS_CONTAINER bash /django-redis/tests/run_all_tests.sh
docker exec -t $DJANGO_REDIS_CONTAINER bash /django-redis/tests/run_sentinel_tests.sh
docker-compose down
# Cleanup
docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")
docker rmi djangoredis_django-redis
docker rmi djangoredis_sentinel1
docker rmi djangoredis_sentinel2
docker rmi djangoredis_sentinel3
docker rmi redis
