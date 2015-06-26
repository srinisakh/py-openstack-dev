# Run this shell script to setup the python environment on your localhost
# Troubleshooting tip: Make sure you have at least 1MB memory allocated, otherwise ceilo dependencies fail to install
sudo apt-get install sshpass ansible
ansible-galaxy install srsakhamuri.py-openstack-dev
cd ~/srsakhamuri.py-openstack-dev/
ansible-playbook -i "localhost," site.yml --ask-pass
