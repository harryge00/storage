servers="192.168.16.49 192.168.16.80 192.168.16.125 192.168.16.143 192.168.16.175 192.168.16.191 192.168.16.207 192.168.16.223"
for host in $servers
do
 ssh "root@$host" 'firewall-cmd --zone=public --add-service=nfs --add-service=samba --add-service=samba-client --permanent && 
firewall-cmd --zone=public --add-port=111/tcp --add-port=139/tcp --add-port=445/tcp --add-port=965/tcp --add-port=2049/tcp \
--add-port=38465-38469/tcp --add-port=631/tcp --add-port=111/udp --add-port=963/udp --add-port=49152-49251/tcp  --permanent &&
firewall-cmd --reload'
done

servers="192.168.16.49 192.168.16.80 192.168.16.125 192.168.16.143 192.168.16.175 192.168.16.191 192.168.16.207 192.168.16.223"
for host in $servers
do
  sshpass -p 'caicloud2017' ssh "root@$host" 'systemctl mask firewalld'
done