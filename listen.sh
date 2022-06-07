listenq(){
    ter=$(termux-speech-to-text)
}

listenf(){
    banner
    echo "[*] Listening....    "
    listenq
    banner
    echo "[*] Listening....    $ter"
}

