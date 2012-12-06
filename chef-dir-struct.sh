
m_dir_conf='/etc/chef'
m_dir_repo='/tmp/chef-solo'
m_solo='solo.rb'
m_user='vagrant'

echo " Creating directories $m_dir_conf  $m_dir_repo  $m_dir_repo/cookbooks"
mkdir -p $m_dir_conf $m_dir_repo "$m_dir_repo/cookbooks"
echo " Coping file from $m_solo to $m_dir_conf/$m_solo"
cp $m_solo "$m_dir_conf/$m_solo"
echo " $m_dir_conf and $m_dir_repo owner changed to $m_user"
chown -R $m_user $m_dir_conf $m_dir_repo 

