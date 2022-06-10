termux-battery-status > $dir/status
for (( i=1; i<9; i++ )); do
    status=$(cat $dir/status | head -n $i | tail -n +$i)
    if [[ $i != 1 && $i != 8 && $i -lt 6 ]]; then
        speak=$status
        rate="-r 1.5"
        speakf
    elif [[ $i != 1 && $i != 8 ]]; then
        echo $status
        sleep 0.5
    fi
done
sleep 3