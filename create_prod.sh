taas_volumes="taas-addon-manager-mongo  taas-auth-mongo  taas-cds-mongo  taas-clever-admin-mongo  taas-console-web-mongo  taas-cyclone-etcd  taas-cyclone-kafka  taas-cyclone-mongo  taas-kubernetes-admin-mongo taas-clever-storage-mongo"
count=0
for i in $taas_volumes
do
	if [ $((count % 5)) -eq 1 ]; then
		gluster volume create $i replica 3 arbiter 1  kube-node-1:/export/sdc/$i kube-node-2:/export/sdc/$i kube-node-3:/export/sdc/$i
	elif [ $((count % 5)) -eq 2 ]; then
		gluster volume create $i replica 3 arbiter 1  kube-node-2:/export/sdc/$i kube-node-3:/export/sdc/$i kube-master-3:/export/sdc/$i 
	elif [ $((count % 5)) -eq 3 ]; then
		gluster volume create $i replica 3 arbiter 1  kube-node-3:/export/sdc/$i kube-master-3:/export/sdc/$i kube-master-2:/export/sdc/$i
	elif [ $((count % 5)) -eq 4 ]; then
		gluster volume create $i replica 3 arbiter 1  kube-master-3:/export/sdc/$i kube-master-2:/export/sdc/$i kube-node-1:/export/sdc/$i
	else
		gluster volume create $i replica 3 arbiter 1  kube-master-2:/export/sdc/$i kube-node-1:/export/sdc/$i kube-node-2:/export/sdc/$i 
	fi
	gluster volume start $i
	count=$(($count+1))
done