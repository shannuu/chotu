check="dpkg -s"

pkgarr=( "termux-api" "jq" )

for (( i=0; i<2; i++ )); do
    pkg=${pkgarr[i]}
    $check $pkg > status
    status=$(cat status | head -n 2 | tail -n +2)
    if [[ $status != "Status: install ok installed" ]]; then
        pkg install $pkg
    fi
done