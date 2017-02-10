servers="192.168.16.146"
for host in $servers
do
 echo "ssh to $host"
 ssh "root@$host" 'yum -y install centos-release-gluster38 &&
yum -y install glusterfs gluster-cli glusterfs-libs glusterfs-server'
done