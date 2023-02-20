#!/bin/bash
# Prompt user to choose interface
echo "Which interface do you want to change to? (mgmt/vlan)"
read interface
# Set chosen interface
if [[ "$interface" == "mgmt" ]]; then
    echo "Setting interface to mgmt"
    cp /root/interfaces-changer/mgmt/interfaces /etc/network/
    cp /root/interfaces-changer/mgmt/hosts /etc/
    cp /root/interfcaes-changer/mgmt/resolv.conf /etc/
    reboot now
    # Add commands to set interface to mgmt here
elif [[ "$interface" == "vlan" ]]; then
    echo "Setting interface to vlan"
    cp /root/interfaces-changer/vlan/interfaces /etc/network/
    cp /root/interfaces-changer/vlan/hosts /etc/
    cp /root/interfaces-changer/vlan/resolv.conf /etc/
    reboot now
else
    echo "Invalid choice, please choose 'mgmt' or 'vlan'"
fi
