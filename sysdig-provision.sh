echo "### "
echo "### Provisioning sysdig..."
echo "### "


sudo curl -s https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public | apt-key add -
sudo curl -s -o /etc/apt/sources.list.d/draios.list http://download.draios.com/stable/deb/draios.list
sudo apt-get update
sudo apt-get -y install linux-headers-$(uname -r)
sudo apt-get -y install sysdig ltrace

sudo groupadd sysdig
sudo usermod -aG sysdig vagrant
