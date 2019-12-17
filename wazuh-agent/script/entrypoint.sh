#!/bin/bash

# Register agent if ENV does not work # ref: Documentation > User manual > Registering agents Using the simple registration service 
/var/ossec/bin/agent-auth -m wazuh-manager-master-0.wazuh-cluster.wazuh.svc.cluster.local && \
service wazuh-agent start && \

for script in `ls /entrypoint-scripts/*.sh | sort -n`; do
  bash "$script"
done

# Start Wazuh Server.
/sbin/my_init 