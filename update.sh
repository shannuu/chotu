pversion=$(cat version)
lversion=$(curl https://raw.githubusercontent.com/shannuu/chotu/main/version)

if [[ $pversion != $lversion ]]; then
    cd
    echo "[*] Found a new version of CHOTU"
    sleep 0.5
    echo "Auto Updating"
    sleep 2
    rm -rf chotu
    git clone https://github.com/shannuu/chotu
    echo "[*] Restart CHOTU to apply changes"
    sleep 3
    clear
    exit
fi