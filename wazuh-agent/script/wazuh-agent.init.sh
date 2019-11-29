#!/bin/bash
service wazuh-agent start
tail -f /var/ossec/etc/ossec.log