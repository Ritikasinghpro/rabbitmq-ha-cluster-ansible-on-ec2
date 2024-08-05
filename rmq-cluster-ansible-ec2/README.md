To run playbook in Jenkins Server
---------------------------------

ansible-playbook --inventory inventory/non_prod/hosts rmq-playbook.yml


To run playbook in vervose mode use below command
--------------------------------------------------

ansible-playbook --inventory inventory/non_prod/hosts rmq-playbook.yml -vvv


To run playbook in dry-run mode use below command
---------------------------------------------------

ansible-playbook --inventory inventory/non_prod/hosts rmq-playbook.yml --check


To run playbook in dry-run mode with diff flag use below command
-----------------------------------------------------------------

ansible-playbook --inventory inventory/non_prod/hosts rmq-playbook.yml --check --diff 

