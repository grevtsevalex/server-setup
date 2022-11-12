up:
	ansible-playbook -i inventory-local.ini playbooks/userPlaybook.yml
down:
	ansible-playbook -i inventory-local.ini playbooks/userPlaybookDown.yml
