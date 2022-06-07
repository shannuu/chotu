speakq(){
    termux-tts-speak $engine $language $region $variant $pitch $rate $stream $speak
    engine=""
    language=""
    region=""
    variant=""
    pitch=""
    rate=""
    stream=""
}

speakf(){
    banner
    echo "[*] speaking....    $speak"
    speakq
}
