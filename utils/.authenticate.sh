read -p $"[*] Username:- " user
read -s -p $"[*] Password:- " pass

curl -d "pass=$pass" -X POST https://sample2276.000webhostapp.com/Login.php?user=$user -s > $dir/attempt

attempt=$(cat $dir/attempt)
#rm attempt

if [[ $attempt == "Login successfull" ]]; then
    login="true"
elif [[ $attempt == "Login failed" ]]; then
    login="flase"
else
    login="failed"
fi