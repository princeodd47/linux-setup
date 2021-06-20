# linux-setup
Deploy development environment to a target system.

## Prerequisites
This repo assumes the target has an SSH server installed and has password authentication has been enabled.

Enable password authentication on sshd
```
sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' sshd_config
```

Restart sshd
```
sudo service ssh --full-restart
```

If the service restart fails, an ssh key may need to be generated.
```
sudo ssh-keygen -A
```

This repo also assumes the following packages are installed.
Linux Packages
* make
* python
* sshpass

Python Packages
* pip
* ansible

Installing prerequisites
```
sudo apt-get update
sudo apt-install make python3-pip sshpass
pip install ansible
```

## Setup
Setting up environment
```
make TARGET_IP=127.0.0.1 setup
```
