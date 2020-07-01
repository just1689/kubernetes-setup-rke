# Requirements
# Ubuntu 18.04, network card on home network, OpenSSH installed during setup.



#
# Run this on all nodes
# ssh into the VM and run
#
sudo apt update
sudo apt upgrade -y

sudo apt remove docker docker-engine docker.io
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y

sudo usermod -aG docker $USER
exit

#
# Now SSH back into the VM and run
#
docker ps

# You should see
# CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES


