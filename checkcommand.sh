if [[ $ter == "torch" || $ter == "flash" || $ter == "flash light" || $ter == "light" ]]; then
    torchf
    
    
elif [[ $ter == "set brightness" || $ter == "brightness" ]]; then
    brightnessf
    

elif [[ $ter == "battery status" || $ter == "battery" || $ter == "status" ]]; then
    batteryf
    
    
elif [[ $ter == "show" || $ter == "list" || $ter == "ls" || $ter == "dir" ]]; then
        pwd=$(pwd)
        showf
        widget=""
        values=""
        title=""
        cd $pwd
        read -p $"[*] Press any key to continue...." k

else
    title=' Enter the command:-'
    dialogf
    if [[ $ter == "" ]]; then
        clear
        exit
    fi
    cnf="cnf"
    continue
fi