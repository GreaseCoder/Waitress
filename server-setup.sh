sudo apt update
sudo apt upgrade -y
sudo apt install -y openssh-server

wget https://download.docker.com/linux/static/stable/x86_64/docker-18.03.0-ce.tgz
tar xzvf docker-18.03.0-ce.tgz
sudo cp docker/* /usr/bin/

rm docker-18.03.0-ce.tgz
rm -r docker

sudo dockerd &


