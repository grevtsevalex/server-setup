up:
	ansible-playbook -i inventory-local.ini playbooks/up.yml
down:
	ansible-playbook -i inventory-local.ini playbooks/userPlaybookDown.yml
