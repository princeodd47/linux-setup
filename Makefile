undefine TARGET_IP

.PHONY: setup
setup:
ifndef TARGET_IP
	$(error TARGET_IP is not set)
endif
	ansible-playbook playbooks/htop.yml -K -k --extra-vars "target_ip=${TARGET_IP}"
