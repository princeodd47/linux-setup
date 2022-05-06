undefine TARGET_IP

.PHONY: setup
setup:
ifndef TARGET_IP
	$(error TARGET_IP is not set)
endif
	export ANSIBLE_HOST_KEY_CHECKING=False && ansible-playbook ComputerSetup.yml -K -k --extra-vars "target_ip=${TARGET_IP}" -i '${TARGET_IP},'
