#!/bin/bash
echo "[i] We will now install BlackEyeSecurity to your bin path..."
if [ -d "/usr/share/BlackEyeSecurity" ] ; then
    echo "[i] Found an old version of BlackEyeSecurity, proceeding to update..."
    echo "[i] Backing up old verison."
    if [ -d "/usr/share/BlackEyeSecurity/Backup" ] ; then
        sudo mv /usr/share/BlackEyeSecurity/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/BlackEyeSecurity"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/BlackEyeSecurity $name
    mv ./Backup ./BlackEyeSecurity/
    sudo cp -ar ./BlackEyeSecurity /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making BlackEyeSecurity executable..."
    sudo mv /usr/share/BlackEyeSecurity/main.py /usr/share/BlackEyeSecurity/bes
    sudo chmod +x /usr/share/BlackEyeSecurity/bes
    sudo ln -s /usr/share/BlackEyeSecurity/bes /usr/bin/bes || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./BlackEyeSecurity /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making BlackEyeSecurity executable..."
    sudo mv /usr/share/BlackEyeSecurity/main.py /usr/share/BlackEyeSecurity/bes
    sudo chmod +x /usr/share/BlackEyeSecurity/bes
    sudo ln -s /usr/share/BlackEyeSecurity/bes /usr/bin/bes || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the BlackEyeSecurity folder now."
echo "----------------------------------------"
echo "[i] Run 'sudo bes' to start BlackEyeSecurity."
echo "----------------------------------------"
exit 0
