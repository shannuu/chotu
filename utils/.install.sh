pkgarr=( "termux-api" "jq" "curl" "git" "python" "python2" "figlet" "ruby" )

for (( i=0; i<8; i++ )); do
    pkg=${pkgarr[$i]}
    dpkg -s $pkg > $dir/status 2>&1
    
    if [[ $(cat $dir/status | head -n 2 | tail -n +2) == "Status: install ok installed" ]] || [[ $(cat $dir/status | head -n 3 | tail -n +3) == "Status: install ok installed" ]]; then
        echo > /dev/null 2>&1
    else
        echo $pkg is not installed
        echo "Auto installing package:- $pkg"
        pkg install $pkg -y > /dev/null 2>&1
        echo package $pkg installed
    fi
done

$(echo "test" | lolcat || gem install lolcat) > /dev/null 2>&1
