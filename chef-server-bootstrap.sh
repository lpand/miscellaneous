
sudo sh chef-dir-struct.sh

echo " Executing chef-solo-manually-install.sh script..."
sudo sh chef-solo-manually-install.sh

echo "sudo chef-solo -r chef.json -r http://s3.amazonaws.com/chef-solo/bootstrap-latest.tar.gz" 
sudo chef-solo -j chef.json -r http://s3.amazonaws.com/chef-solo/bootstrap-latest.tar.gz

# Manca la parte di configurazione di knife e della workstation.
