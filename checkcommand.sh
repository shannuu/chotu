if [[ $ter == "torch" || $ter == "flash" || $ter == "flash light" || $ter == "light" ]]; then
    torchf
    
    
elif [[ $ter == "set brightness" || $ter == "brightness" ]]; then
    brightnessf
    

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