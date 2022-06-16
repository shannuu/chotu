read -p $"[*] Do you want to run chotu by default [Y/n]:- " def

if [[ $def == "Y" || $def == "y" || $def == "yes" || $def == "Yes" || $def == "YES" ]]; then
    cd $HOME/chotu >> $HOME/../usr/etc/bash.bashrc
    bash chotu.sh >> $HOME/../usr/etc/bash.bashrc
    clear
    echo Restart your termux to apply changes
    sleep 10
fi