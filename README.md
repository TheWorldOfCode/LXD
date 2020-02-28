# LXD
My thing for LXD containers


# Setup
This will be a short tutorial on how to install and setup LXD on ubuntu. 

## Installing 
First step is to install lxd which is recommed but using the package manager snap. Run the following command 
``` bash
sudo snap install lxd
```

After that is done install the zfs filesystem which are the recommended storage backend for LXD. 
This is done with the following command 
``` bash
sudo snap install lxd
```

## Initialize LXD
In order to initialize LXD run the following command 
``` bash
sudo lxd init
```
This command will aske some question in order to initialize LXD as you want it. Just accept all the defualt configurations. 

Now are we almost done. The last thing is to add your used to the lxd group, this can be done with the following command just replace [user] with your user.
``` bash
sudo usermod --append --groups lxd [user]
```

If more information is need are this maked from the following website [How to Set Up and Use LXD on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-and-use-lxd-on-ubuntu-16-04)
