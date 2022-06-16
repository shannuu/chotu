# chotu 2.0 
# made by kushal
dir="$HOME/chotu/utils"

source $dir/install.sh
source $dir/listen.sh
source $dir/speak.sh
source $dir/update.sh
source $dir/banner.sh

while [[ true ]]; do
    if [[ $cnf == "true" ]]; then
        cnf="false"
    elif [[ $cnf != "true" ]]; then
        listenf
    fi
    source $dir/checkcommand.sh
    sleep 3
done
