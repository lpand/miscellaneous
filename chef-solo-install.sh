#echo "deb http://apt.opscode.com/ `lsb_release -cs`-0.10 main" | sudo tee /etc/apt/sources.list.d/opscode.list
sudo mkdir -p /etc/apt/trusted.gpg.d
gpg --keyserver keys.gnupg.net --recv-keys 83EF826A
gpg --export packages@opscode.com | sudo tee /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null
sudo apt-get update
sudo apt-get install opscode-keyring # permanent upgradeable keyring
sudo apt-get upgrade
echo "chef chef/chef_server_url string none" | sudo debconf-set-selections && sudo apt-get install chef -y
