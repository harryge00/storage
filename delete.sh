dev_volumes="dev-addon-manager-mongo  dev-auth-mongo  dev-cds-mongo  dev-clever-admin-mongo  dev-console-web-mongo  dev-cyclone-etcd  dev-cyclone-kafka  dev-cyclone-mongo  dev-clever-storage-mongo"
for vol in $dev_volumes
do
	echo "mounting $vol"
	mount -t glusterfs 192.168.16.199:$vol mnt
	rm mnt/* -rf
	umount mnt
done


