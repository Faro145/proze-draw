#!/bin/bash
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
. ~/.bashrc
pip install --user ansible
echo $PATH
ansible-playbook -i ./inventory ./playbook.yaml
