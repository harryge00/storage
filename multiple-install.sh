yum search centos-release-gluster

yum install centos-release-gluster37 
yum install glusterfs gluster-cli glusterfs-libs glusterfs-server

systemctl enable glusterd.service
systemctl start glusterd.service

firewall-cmd --zone=public --add-port=24007-24009/tcp --permanent
firewall-cmd --reload