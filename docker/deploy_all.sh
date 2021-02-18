# stop docker
# ======== compose ========
cd /usr/local/docker-workspace
docker-compose down

cd /usr/local/hello_flask
git pull 

cd /usr/local/docker-workspace

# build docker
docker-compose build
docker-compose up -d

# remove unsed container
# docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm
