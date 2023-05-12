apt-get update
apt install sudo -y
 sudo apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
 

 curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#sudo docker run --privileged -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher
