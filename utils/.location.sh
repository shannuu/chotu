sel=$(termux-dialog radio -v "gps,network (recommended)" -t "Select any location provider" | jq ".text" -r)

if [[ $sel == "network (recommended)" ]]; then
    sel="network"
fi

location=$(termux-location -p $sel)
latitude=$(echo $location | jq ".latitude" -r)
longitude=$(echo $location | jq ".longitude" -r)

termux-clipboard-set "$latitude,$longitude"
echo
echo "latitude: $latitude"
echo "longitude: $longitude"
echo "  Copied to clipboard..."
echo
read -p $"press anything to continue" x