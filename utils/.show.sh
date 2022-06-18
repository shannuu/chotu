echo came here
while [[ true ]]; do
    files="..,"
    for i in $(ls); do
        files+="$i,"
    done
    files+=",exit"
    sel=$(termux-dialog sheet -v $files | jq ".text" -r)
    if [[ -e $sel ]]; then
        if [[ -f $sel ]]; then
            if [[ $(echo $sel | cut -d "." -f 2) == "sh" ]]; then
                bash $sel
            else
                termux-open $sel
            fi
        elif [[ -d $sel ]]; then
            cd $sel
            continue
        else
            clear
            exit
        fi
    fi
done