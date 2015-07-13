# Run this shell script to setup the python environment on your localhost
# Troubleshooting tip: Make sure you have at least 1MB memory allocated, otherwise ceilo dependencies fail to install

function cmd() {
    echo $@
    $@
}

cmd export ANSIBLE_HOST_KEY_CHECKING=False
cmd sudo apt-get -y install sshpass ansible
cmd ansible-galaxy install srsakhamuri.py-openstack-dev -p ~
cmd cd ~/srsakhamuri.py-openstack-dev/
cmd ansible-playbook -i "localhost," site.yml --ask-pass
