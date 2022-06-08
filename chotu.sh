# Made by kushal


dir="/data/data/com.termux/files/home/chotu"

if [[ $(pwd) != $dir ]]; then
    cd $dir
fi


source update.sh
source expvar.sh
source install.sh
source banner.sh
source speak.sh
source listen.sh
source dialog.sh
source torch.sh
source brightness.sh
source battery.sh
source show.sh

while [[ true ]]; do
    if [[ $cnf == "cnf" ]]; then
        cnf=""
    else
        listenf
    fi
    ter=${ter,,}
    source checkcommand.sh
    sleep 2
done