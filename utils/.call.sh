callf(){
    termux-telephony-call $tnumber
}
read -n 2 -p $"Enter the ISD code:- +" isd
echo
read -n 10 -p $"Enter the mobile number:- " number
echo
echo
tnumber="+$isd$number"
callf
sleep 3
read -p $"Press anything to continue" x