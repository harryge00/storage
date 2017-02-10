k8sservers="192.168.16.41 192.168.16.73 192.168.16.105 
192.168.16.42 192.168.16.74 192.168.16.106 192.168.16.137 192.168.16.201 192.168.16.217
192.168.16.43 192.168.16.75 192.168.16.107 192.168.16.138 192.168.16.202 192.168.16.218
192.168.16.44 192.168.16.76 192.168.16.108 192.168.16.139 192.168.16.203 192.168.16.219
192.168.16.45 192.168.16.77 192.168.16.109 192.168.16.140 192.168.16.204 192.168.16.220
192.168.16.46 192.168.16.78 192.168.16.110 192.168.16.141 192.168.16.205 192.168.16.221
192.168.16.47 192.168.16.79 192.168.16.111 192.168.16.142 192.168.16.206 192.168.16.222
192.168.16.48 192.168.16.50 192.168.16.81 192.168.16.126 192.168.16.144 192.168.16.176 192.168.16.192 192.168.16.208 192.168.16.224
192.168.16.51 192.168.16.82 192.168.16.127 192.168.16.145 192.168.16.177 192.168.16.193 192.168.16.209 192.168.16.225
192.168.16.52 192.168.16.83 192.168.16.128 192.168.16.146 192.168.16.178 192.168.16.194 
192.168.16.53 192.168.16.129 192.168.16.147 192.168.16.179 192.168.16.195 
192.168.16.54 192.168.16.85 192.168.16.130 192.168.16.148 192.168.16.180 192.168.16.196 
192.168.16.55 192.168.16.86 192.168.16.131 192.168.16.149 192.168.16.181 192.168.16.197 
192.168.16.56 192.168.16.87 192.168.16.132 192.168.16.150 192.168.16.182 192.168.16.198 
192.168.16.88 192.168.16.133 192.168.16.151 192.168.16.89"
glusterservers="192.168.16.49 192.168.16.80 192.168.16.125 192.168.16.143 192.168.16.175 192.168.16.191 192.168.16.207 192.168.16.223 192.168.16.183 192.168.16.199"
allservers="192.168.16.41 192.168.16.73 192.168.16.105 
192.168.16.42 192.168.16.74 192.168.16.106 192.168.16.137 192.168.16.201 192.168.16.217
192.168.16.43 192.168.16.75 192.168.16.107 192.168.16.138 192.168.16.202 192.168.16.218
192.168.16.44 192.168.16.76 192.168.16.108 192.168.16.139 192.168.16.203 192.168.16.219
192.168.16.45 192.168.16.77 192.168.16.109 192.168.16.140 192.168.16.204 192.168.16.220
192.168.16.46 192.168.16.78 192.168.16.110 192.168.16.141 192.168.16.205 192.168.16.221
192.168.16.47 192.168.16.79 192.168.16.111 192.168.16.142 192.168.16.206 192.168.16.222
192.168.16.48 192.168.16.50 192.168.16.81 192.168.16.126 192.168.16.144 192.168.16.176 192.168.16.192 192.168.16.208 192.168.16.224
192.168.16.51 192.168.16.82 192.168.16.127 192.168.16.145 192.168.16.177 192.168.16.193 192.168.16.209 192.168.16.225
192.168.16.52 192.168.16.83 192.168.16.128 192.168.16.146 192.168.16.178 192.168.16.194 
192.168.16.53 192.168.16.129 192.168.16.147 192.168.16.179 192.168.16.195 
192.168.16.54 192.168.16.85 192.168.16.130 192.168.16.148 192.168.16.180 192.168.16.196 
192.168.16.55 192.168.16.86 192.168.16.131 192.168.16.149 192.168.16.181 192.168.16.197 
192.168.16.56 192.168.16.87 192.168.16.132 192.168.16.150 192.168.16.182 192.168.16.198 
192.168.16.88 192.168.16.133 192.168.16.151 192.168.16.89 192.168.16.49 192.168.16.80 192.168.16.125 192.168.16.143 192.168.16.175 
192.168.16.191 192.168.16.207 192.168.16.223 192.168.16.183 192.168.16.199"
servers=$allservers
for server in $servers
do
 sshpass -p "caicloud2017" ssh root@$server reboot
done
