#!/bin/bash

playbook="main.yml"
password="password=VMware1!"
log_mode="false"

vars_files=$(ls -v vars/vs_vars*.yml 2>/dev/null)

if [ -z "$vars_files" ]; then
  echo "No vars files found in the current directory."
  exit 1
fi

# Loop through each vars file and run the ansible-playbook command
for vars_file in $vars_files; do
  cmd="ansible-playbook $playbook -e $password -e @$vars_file -e avi_role_config_log_mode=$log_mode" 
  echo "Running command: $cmd"
  $cmd
done

