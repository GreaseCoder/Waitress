echo "Starting server-setup"
sudo apt update
sudo apt upgrade -y

echo "Installing openssh-server"
sudo apt install -y openssh-server

echo "Setting up NAS"
sudo apt install -y nfs-common
sudo mkdir -p /nas/rancher
sudo mount 192.168.1.136:/volume1/rancher /nas/rancher
echo "102.168.1.136:/volume1/rancher	/nas/rancher	nfs	defaults	0	0" >> /etc/fstab
echo "NAS complete!"

echo "Installing docker"
wget https://download.docker.com/linux/static/stable/x86_64/docker-18.03.0-ce.tgz
tar xzvf docker-18.03.0-ce.tgz
sudo cp docker/* /usr/bin/

rm docker-18.03.0-ce.tgz
rm -r docker

sudo dockerd &


