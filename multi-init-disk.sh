servers="192.168.16.49"
for host in $servers
do
	ssh "root@$host" 'mkdir -p /export/sdb1 &&
   mount /dev/vda1 /export/sdb1/ &&
   echo "/dev/vda1 /export/sdb1 ext4 defaults 0 0" >> /etc/fstab &&
   mkdir /export/sdb2 &&
   mount /dev/vda2 /export/sdb2/ &&
   echo "/dev/vda2 /export/sdb2 ext4 defaults 0 0" >> /etc/fstab'
done