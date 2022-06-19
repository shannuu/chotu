while [[ true ]]; do
    val=$(echo $ter | tr -d -c 0-9)
    if [[ $val != "" && $val -ge 0 && $val -le 225 ]]; then
        termux-brightness $val
        speak="brightness level set to $val"
        rate="-r 1.3"
        speakf
        break
    else
        ter=$(termux-dialog -t "Enter the value [0-225]" | jq ".text" -r)
        if [[ $ter == "" ]]; then
            clear
            exit
        fi
        
        continue
    fi
done
