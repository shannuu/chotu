batteryf(){
    termux-battery-status > status
    for (( i=1; i<9; i++ )); do
        status=$(cat status | head -n $i | tail -n +$i)
        if [[ $i == 1 || $i == 8 ]]; then
            echo
        elif [[ $i -gt 1 && $i -lt 6 ]]; then
            echo $status
            rate="-r 1.5"
            speak=$status
            speakq
        else
            echo $status
            sleep 1
        fi
    done
    sleep 2
}
