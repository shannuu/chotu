pversion=$(cat version || exit)
curl https://raw.githubusercontent.com/shannuu/chotu/main/version > lversion
lversion=$(cat lversion || exit)

if [[ $pversion != $lversion ]]; then
    cd
    clear
    echo "[*] Found a new version of CHOTU"
    sleep 0.5
    echo "Auto Updating"
    sleep 2
    rm -rf chotu
    git clone https://github.com/shannuu/chotu
    clear
    echo "[*] Restart CHOTU to apply changes"
    sleep 3
    cd
    clear
    exit
fi

rm lversion
