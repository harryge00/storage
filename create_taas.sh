taas_volumes="taas-addon-manager-mongo  taas-auth-mongo  taas-cds-mongo  taas-clever-admin-mongo  taas-console-web-mongo  taas-cyclone-etcd  taas-cyclone-kafka  taas-cyclone-mongo  taas-kubernetes-admin-mongo taas-clever-storage-mongo"
count=0
for i in $taas_volumes
do
	if [ $((count % 2)) -eq 1 ]; then
		gluster volume create $i replica 3 arbiter 1  10.10.0.10:/export/sde/$i 10.10.0.12:/export/sde/$i 10.10.0.13:/export/sde/$i
	else
		gluster volume create $i replica 3 arbiter 1  10.10.0.14:/export/sde/$i 10.10.0.15:/export/sde/$i 10.10.0.16:/export/sde/$i 
	fi
	gluster volume start $i
	count=$(($count+1))
done