# yum install -y git
# git clone https://github.com/hello1988/hello_flask.git /usr/local/hello_flask
# cd /usr/local/hello_flask/docker
# chmod +x /usr/local/hello_flask/docker/centos_setup.sh
# chmod +x /usr/local/hello_flask/docker/deploy_all.sh
# ./centos_setup.sh

# install docker
yum install -y yum-utils
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
# install docker compose
yum install -y python36 python-devel python-setuptools python-pip
pip3 install -U wheel pip setuptools
pip3 install docker-compose
cp /usr/local/bin/docker-compose /usr/bin/docker-compose

systemctl start docker
systemctl enable docker

cd /usr/local
mkdir docker-workspace

/bin/cp ./hello_flask/docker/docker-compose.yml ./docker-workspace
/bin/cp ./hello_flask/docker/Dockerfile ./hello_flask

# ======== compose ========
cd /usr/local/docker-workspace
docker-compose build
docker-compose up -d
