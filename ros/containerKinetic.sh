
pulseaudio --start

echo "Creating container"
sudo lxc launch --profile default --profile gui ubuntu:16.04 $1 
echo "Container created"

echo "Add device to container"
sudo lxc config device add $1 modules disk source=/lib/modules/$(uname -r) path=/lib/modules/$(uname -r)
echo "Added device"

sudo lxc start $1

echo "Pushing file to container"
sudo lxc file push kinetic.sh $1/root/
echo "File pushed"

echo "Running kinetic installer"
sudo lxc exec $1 -- /bin/bash /root/kinetic.sh
echo "Kinetic installed"
