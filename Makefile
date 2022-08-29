PLAYBOOK_CMD:=ANSIBLE_PIPELINING=true ansible-playbook --vault-password-file vault-password

galaxy-install-force:
	ansible-galaxy collection install --force -r requirements.yml
	ansible-galaxy install --force -r requirements.yml

install:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy install -r requirements.yml

runner: install
	${PLAYBOOK_CMD} -i hosts runner.yml
