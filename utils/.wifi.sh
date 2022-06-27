if [[ $ter == *"on"* || $ter == *"enable"* ]]; then
    termux-wifi-enable true
elif [[ $ter == *"off"* || $ter == *"disable"* || $ter == *"of"* ]]; then
    termux-wifi-enable false
elif [[ $ter == *"scan"* ]]; then
    echo
elif [[ $ter == *"connection"* || $ter == *"info"* ]]; then
    result=$(termux-wifi-connectioninfo)
    bssid=$(echo $result | jq ".bssid" -r)
    frequency=$(echo $result | jq ".frequency_mhz" -r)
    ip=$(echo $result | jq ".ip" -r)
    linkSpeedMbps=$(echo $result | jq ".link_speed_mbps" -r)
    macAddress=$(echo $result | jq ".mac_address" -r)
    networkId=$(echo $result | jq ".network_id" -r)
    rssi=$(echo $result | jq ".rssi" -r)
    ssid=$(echo $result | jq ".ssid" -r)
    ssidHidden=$(echo $result | jq ".ssid_hidden" -r)
    supplicantState=$(echo $result | jq ".supplicant_state" -r)
    value="    bssid:  $bssid\n    frequency_mhz:  $frequency\n    ip:  $ip\n    link_speed_mbps:  $linkSpeedMbps\n    mac_address:  $macAddress\n    network_id:  $networkId\n    rssi:  $rssi\n    ssid:  $ssid\n    ssid_hidden: $ssidHidden\n    supplicant_state:  $supplicantState"
    echo
    echo -e "$value"
    echo
    echo
    read -p $"Press anything to continue" con
fi