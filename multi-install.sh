servers="192.168.16.49"
for host in $servers
do
	ssh "root@$host" 'yum remove -y centos-release-gluster37 && yum remove -y glusterfs gluster-cli glusterfs-libs glusterfs-server &&
	yum install -y centos-release-gluster38 &&
	yum install -y glusterfs gluster-cli glusterfs-libs glusterfs-server && 
	systemctl enable glusterd.service && 
	systemctl start glusterd.service;
	firewall-cmd --zone=public --add-port=24007-24009/tcp --permanent &&
	firewall-cmd --reload'
done