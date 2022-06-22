bashloc="$HOME/../usr/etc/bash.bashrc"

read -p $"[*] Do you want to run chotu by default [Y/n]:- " def

if [[ $def == "Y" || $def == "y" || $def == "yes" || $def == "Yes" || $def == "YES" ]]; then
    if [[ -e $$bashloc ]]; then
        mv "$bashloc" "$bashloc_original"
    fi
    cat $HOME/chotu/utils/.default.txt > $bashloc
    clear
    echo Restart your termux to apply changes
    sleep 10
fi
