# Made by kushal

#source dircheck.sh
source expvar.sh
source install.sh
source banner.sh
source speak.sh
source listen.sh
source dialog.sh
source torch.sh
source brightness.sh

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