if [[ $ter == *"torch"* || $ter == *"flash"* || $ter == *"light"* ]] && [[ $ter == *"on"* ]]; then
    termux-torch on
    speak="torch on"
    speakf
    
elif [[ $ter == *"torch"* || $ter == *"flash"* || $ter == *"light"* ]] && [[ $ter == *"of"* ]]; then
    termux-torch off
    speak="torch off"
    speakf
fi