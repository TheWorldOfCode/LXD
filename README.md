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
sudo apt install zfsutils-linux
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


# Add profiles to container
DESCRIPT WHAT IS A PROFILE 

When a profile is create as a txt file can it easy be create a new LXD profile, first run the follow command, remember to replace [profile] with the real profile name
```bash
sudo lxc profile create [profile]
```
Now the profile has to be edit so it contains the profile descripted in the txt file
``` bash
cat file.txt | sudo lxc profile edit gui
```
