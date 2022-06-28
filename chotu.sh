# chotu 2.0 
# made by kushal
dir="$HOME/chotu/utils"

source $dir/.install.sh
source $dir/.listen.sh
source $dir/.speak.sh
source $dir/.update.sh
source $dir/.banner.sh

while [[ true ]]; do
    preter=$ter
    if [[ $cnf == "true" ]]; then
        cnf="false"
    elif [[ $cnf != "true" ]]; then
        listenf
    fi
    ter=${ter,,}
    source $dir/.checkcommand.sh
done
