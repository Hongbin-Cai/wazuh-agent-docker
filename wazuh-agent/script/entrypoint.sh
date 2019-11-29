#!/bin/bash
for script in `ls /entrypoint-scripts/*.sh | sort -n`; do
  bash "$script"

done

# Start Wazuh Server.
/sbin/my_init 