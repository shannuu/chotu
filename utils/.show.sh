collect(){
    for i in $(ls $wf); do
        if [[ -f $i ]]; then
            files+="$i,"
        elif [[ -d $i ]]; then
            dirs+="$i,"
        fi
    done
}

display(){
    sele=$(termux-dialog sheet -v "$main")
    if [[ $(echo $sele) == '{ "code"' ]]; then
        exit
    fi
    sel=$(echo $sele | jq ".text" -r)
}

main(){
    while [[ true ]]; do
        wf=$(pwd)
        pre="..,,"
        files="| ×-×-×-×-×-×-×-×  *FILES*  ×-×-×-×-×-×-×-× |,"
        dirs=",| ×-×-×-×-×-×  *DIRECTORIES* ×-×-×-×-×-× |,"
        collect
        files+="| ×-×-×-×-×-×-×-×  *FILES*  ×-×-×-×-×-×-×-× |,,"
        dirs+="| ×-×-×-×-×-×  *DIRECTORIES* ×-×-×-×-×-× |,"
        suf=",EXIT"
        main="$pre$files$dirs$suf"
        display
        
        if [[ -f $sel ]]; then
            actm="open,delete,move,copy"
            act=$(termux-dialog spinner -v $actm -t "Select an action" | jq ".text" -r)
            if [[ $act == "open" ]]; then
                if [[ $(echo $sel | cut -d "." -f 2) == "sh" ]]; then
                    bash $wf/$sel
                else
                    termux-open $wf/$sel
                fi
                break
            elif [[ $act == "delete" ]]; then
                rm $wf/$sel
            elif [[ $act == "move" ]]; then
                break
            elif [[ $act == "copy" ]]; then
                break
            fi
        elif [[ -d $sel ]]; then
            cd $sel
            continue
        elif [[ $sel == "EXIT" ]]; then
            break
        else
            continue
        fi
    done
}
main