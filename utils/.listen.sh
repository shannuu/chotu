listenf(){
    bannerf
    ter=$(termux-dialog speech | jq ".text" -r)
    echo "[*] Listening....    $ter"
    sleep 0.5
}