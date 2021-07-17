#!/bin/bash
echo "[i] We will now uninstall BlackEyeSecurity..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/rst
sudo rm -rf -i /usr/share/BlackEyeSecurity

echo "[i] BlackEyeSecurity sucessfully uninstalled."
exit 0
