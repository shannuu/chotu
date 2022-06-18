speakq(){
    termux-tts-speak $rate $speak
}

speakf(){
    echo $speak
    speakq
}