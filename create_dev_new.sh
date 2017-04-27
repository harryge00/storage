dbs="addon-manager-mongo  auth-mongo  cds-mongo  clever-admin-mongo  console-web-mongo  cyclone-etcd  cyclone-kafka  cyclone-mongo  kubernetes-admin-mongo clever-storage-mongo"
dbs_new="cauth-mongo monitoring-admin-mongo helm-registry monitoring-server-mongo"
for i in $dbs_new
do 
	gluster volume stop $i
	gluster volume delete $i
done

for i in $dbs_new
do
	gluster volume create dev-$i replica 3 arbiter 1 192.168.16.183:/export/sdb1/dev-$i 192.168.16.207:/export/sdb1/dev-$i 192.168.16.175:/export/sdb1/dev-$i
done

for i in $dbs_new
do
	gluster volume start $i
done