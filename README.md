# linux-setup
Deploy development environment to a target system.

## Prerequisites
This repo assumes the target has an SSH server installed and password authentication has been enabled.

Enable password authentication on sshd
```
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
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
sudo apt-get install make python3-pip sshpass
pip3 install ansible
```

## Setup
Setting up environment
```
make TARGET_IP=127.0.0.1 setup
```
