echo "************************"
echo "Start installing..."
echo "************************"
echo "************************"
echo "DOCKER"
echo "************************"

echo "************************"
echo "installing dependecies libraries"
echo "************************"
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "************************"
echo "check keys"
echo "************************"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

echo "************************"
echo "installing docker engine"
echo "************************"
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

echo "************************"
echo "docker engine testing"
echo "************************"
docker run hello-world

echo "************************"
echo "DOCKER-COMPOSE"
echo "************************"
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

echo "************************"
echo "Finished..."
echo "************************"