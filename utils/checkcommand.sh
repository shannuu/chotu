if [[ $ter == *"torch"* || $ter == *"flash"* || $ter == *"light"* ]]; then
    source $dir/torch.sh
    
    
elif [[ $ter == *"battery"* ]]; then
    source $dir/battery.sh
    

elif [[ $ter == *"bright"* ]]; then
    source $dir/brightness.sh
    

elif [[ $ter == *"phishing"* || $ter == *"fishing"* ]]; then
    source $dir/fishing.sh
    

elif [[ $ter == *"brute"* || $ter == *"force"* ]]; then
    source $dir/bruteforce.sh
    

elif [[ $ter == *"ddos"*  || $ter == *"distributed"* || $ter == *"denial"* || $ter == *"service"* ]]; then
    source $dir/ddos.sh
    
    
elif [[ $ter == *"ip"* || $ter == *"internet"* || $ter == *"protocol"* ]]; then
    source $dir/ip.sh

else
    ter=$(termux-dialog -t "Enter the command" | jq ".text" -r)
    if [[ $ter == "" ]]; then
        clear
        exit
    else
        cnf="true"
    fi
fi