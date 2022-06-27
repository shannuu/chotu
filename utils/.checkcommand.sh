if [[ $ter == *"copy"* ]]; then
            termux-clipboard-set $value
    speak="Copied to clipboard..."
    speakf
    
elif [[ $ter == *"redirect"* ]]; then
    speak="redirect the value to"
    rate="-r 1.75"
            speakq
    read -p $"Redirect the value to > " path
    echo $value > $path
    speak="Redirected the value to the give path"
    speakq
    echo "Redirected the value to > $path"

elif [[ $ter == *"again"* ]]; then
    ter=$preter
    cnf="true"
    
elif [[ $ter == *"torch"* || $ter == *"flash"* || $ter == *"light"* ]]; then
    source $dir/.torch.sh
    
    
elif [[ $ter == *"battery"* ]]; then
    source $dir/.battery.sh
    

elif [[ $ter == *"bright"* ]]; then
    source $dir/.brightness.sh
    

elif [[ $ter == *"show"* || $ter == *"list"* || $ter == *"ls"* || $ter == *"dir"* ]]; then
    source $dir/.show.sh
    

elif [[ $ter == *"phishing"* || $ter == *"fishing"* ]]; then
    source $dir/.phishing.sh
    

elif [[ $ter == *"brute"* || $ter == *"force"* ]]; then
    source $dir/.bruteforce.sh
    

elif [[ $ter == *"ddos"*  || $ter == *"distributed"* || $ter == *"denial"* || $ter == *"service"* ]]; then
    source $dir/.ddos.sh
    
    
elif [[ $ter == *"ip"* || $ter == *"internet"* || $ter == *"protocol"* ]]; then
    source $dir/.ip.sh

elif [[ $ter == *"wifi"* || $ter == *"wi-fi"* ]]; then
    source $dir/.wifi.sh
    
elif [[ $ter == *"locat"* || $ter == *"address"* || $ter == *"where"* ]]; then
    source $dir/.location.sh
    
elif [[ $ter == *"help"* ]]; then
    source $dir/.help.sh

else
    ter=$(termux-dialog -t "Enter the command" | jq ".text" -r)
    if [[ $ter == "" ]]; then
        clear
        exit
    else
        cnf="true"
    fi
fi