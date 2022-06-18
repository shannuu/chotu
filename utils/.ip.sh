#speak="Enter the site name"
#speakq
read -p $"Enter the site name:- " site

ip=$(ping -w 1 $site)
fieldip=$(echo $ip | cut -d " " -f 3)
wrdc=$(echo $fieldip | wc -c)
m1=$(( $wrdc - 2 ))
fip=$(echo $fieldip | cut -c 2-$m1)

clear
termux-clipboard-set $fip
echo "IP Copied to clipboard"
sleep 2
clear
echo "IP :-  $fip"
sleep 3
clear