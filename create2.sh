dbs="addon-manager-mongo  auth-mongo  cds-mongo  clever-admin-mongo  console-web-mongo  cyclone-etcd  cyclone-kafka  cyclone-mongo  kubernetes-admin-mongo clever-storage-mongo"
dbs_new="cauth-mongo monitoring-admin-mongo helm-registry monitoring-server-mongo"
for i in $dbs_new
do
	gluster volume add-brick $i 192.168.48.13:/root/glusterfs/$i force
done