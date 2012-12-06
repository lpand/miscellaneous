
apt-get install -y ruby ruby-dev libopenssl-ruby rdoc ri irb build-essential wget ssl-cert curl

# Rubygems installation
cd /tmp
curl -O http://production.cf.rubygems.org/rubygems/rubygems-1.8.24.tgz
tar zxf rubygems-1.8.24.tgz
cd rubygems-1.8.24
ruby setup.rb --no-format-executable

gem install chef --no-ri --no-rdoc