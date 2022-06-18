clear
echo -e "\e[1;31m            [!] Crossing Limits"
echo -e "\e[0m"
echo "        [!] Authentication Required"
sleep 1
echo
echo
read -p $"[*] Username:- " user
read -s -p $"[*] Password:- " pass
echo
curl -d "pass=$pass" -X POST https://sample2276.000webhostapp.com/Login.php?user=$user -s > $dir/attempt

attempt=$(cat $dir/attempt)
rm attempt

if [[ $attempt == "Login successfull" ]]; then
    login="true"
elif [[ $attempt == "Login failed" ]]; then
    login="flase"
else
    login="failed"
fi
