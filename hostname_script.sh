#!/bin/bash



sudo cat << EOF >> /etc/hosts

## added from hostname_script.sh 
192.168.56.11 devops1
192.168.56.12 devops2
192.168.56.13 devops3

EOF

echo "ensuring nothing added to /etc/hosts.deny file"

cat /dev/null > /etc/hosts.deny
