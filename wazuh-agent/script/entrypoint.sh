for script in `ls /entrypoint-scripts/*.sh | sort -n`; do
  bash "$script"

done