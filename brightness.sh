brightnessf(){
    rate="-r 1.5"
    echo "[*] speaking....    set the value between [0-225]"
    speak="set the value between 0 and 2 25"
    speakq
    listenf
    if [[ $ter != "" && $ter -ge 0 || $ter != "" && $ter -le 225 ]]; then
        termux-brightness $ter
    else
        title="Enter the value for brightness"
        widget="radio"
        values="-v 0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220"
        dialogf
        if [[ $ter != "" ]]; then
            termux-brightness $ter
        fi
    fi
}