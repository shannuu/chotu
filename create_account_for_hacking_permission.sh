read -p $"[*] Enter your desired username:- " user
read -s -p $"[*] Enter your desired password:- " pass
echo
read -p $"[*] Enter the private code:- " code

curl -d "code=$code&pass=$pass" -X POST "https://sample2276.000webhostapp.com/Signup.php?user=$user" -s