demo_volumes="demo-addon-manager-mongo  demo-auth-mongo  demo-cds-mongo  demo-clever-admin-mongo  demo-console-web-mongo  demo-cyclone-etcd  demo-cyclone-kafka  demo-cyclone-mongo  demo-kubernetes-admin-mongo demo-clever-storage-mongo"
dev_volumes="dev-addon-manager-mongo  dev-auth-mongo  dev-cds-mongo  dev-clever-admin-mongo  dev-console-web-mongo  dev-cyclone-etcd  dev-cyclone-kafka  dev-cyclone-mongo  dev-kubernetes-admin-mongo dev-clever-storage-mongo"
infra_volumes="infra-addon-manager-mongo  infra-auth-mongo  infra-cds-mongo  infra-clever-admin-mongo  infra-console-web-mongo  infra-cyclone-etcd  infra-cyclone-kafka  infra-cyclone-mongo  infra-clever-storage-mongo"
# infra_volumes="infra-addon-manager-mongo  infra-auth-mongo  infra-cds-mongo  infra-clever-admin-mongo  infra-console-web-mongo  infra-cyclone-etcd  infra-cyclone-kafka  infra-cyclone-mongo  infra-kubernetes-admin-mongo infra-clever-storage-mongo"

for v in $demo_volumes
do
	gluster volume add-brick  ${v} replica 3 arbiter 1 192.168.16.49:/export/sdb2/$v 192.168.16.80:/export/sdb2/$v 192.168.16.125:/export/sdb2/$v 192.168.16.143:/export/sdb2/$v 192.168.16.175:/export/sdb2/$v 192.168.16.191:/export/sdb2/$v 192.168.16.207:/export/sdb2/$v 192.168.16.223:/export/sdb2/$v
done