showf(){
    while [[ true ]]; do
        files="..,"
        for i in $(ls); do
            files+="$i,"
        done
        files+=",exit"
        widget="sheet"
        values="-v $files"
        dialogf
    
        if [[ -e $ter ]]; then
            if [[ -f $ter ]]; then
                ext=$(echo $ter | cut -d "." -f 2)
                if [[ $ext == "sh" ]]; then
                    bash $ter
                else
                    termux-open $ter
                    break
                fi
            elif [[ -d $ter ]]; then
                cd $ter
                continue
            elif [[ $ter == ".." ]]; then
                cd ..
                continue
            elif [[ $ter == "exit" ]]; then
                break
            else
                continue
            fi
        fi
    done
}

