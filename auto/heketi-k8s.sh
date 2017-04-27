# Create a heketi pod.
kubectl create heketi.yaml

# Load topology.
export HEKETI_CLI_SERVER=
./heketi_cli load --json=topology.json 