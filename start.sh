#!/bin/bash
# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-

# ALQ, Hamburg 2024
#clear
echo "start script: running host and api preparation"
sudo ansible-playbook -i /home/cumulus/DGX/inventory/files/hosts /home/cumulus/DGX/.nvue/api_file.yaml
sudo ansible-playbook -i /home/cumulus/DGX/inventory/files/hosts /home/cumulus/DGX/.netplan/hosts.yaml
echo "start script: searching for and running additional configuration items" 
if [ -f /home/cumulus/DGX/.additional.conf ]; then
        . /home/cumulus/DGX/.additional.conf
fi
echo "please use the correct user depending on the selected training, going forward"
exit 0
