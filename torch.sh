torchf(){
    if [[ $torch == "on" ]]; then
        termux-torch off
        torch="off"
        continue
    elif [[ $torch == "off" ]]; then
        termux-torch on
        torch="on"
        continue
    fi
    speak="torch, on or off"
    rate="-r 2"
    speakq
    listenf
    if [[ $ter == "on" ]]; then
        termux-torch $ter
        torch="$ter"
    elif [[ $ter == "off" ]] || [[ $ter == "of" ]]; then
        termux-torch off
        torch="off"
    else
        title=" Choose any option"
        values="-v on,off"
        widget="radio"
        dialogf
        if [[ $ter == "on" ]]; then
            termux-torch on
            torch="on"
        elif [[ $ter == "off" ]]; then
            termux-torch off
            torch="off"
        fi
        values=""
        widget=""
    fi
}