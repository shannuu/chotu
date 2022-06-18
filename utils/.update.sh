if [[ $(cat $dir/.version) != $(curl https://raw.githubusercontent.com/shannuu/chotu/main/utils/.version -s) ]]; then
    speak="New version of CHOTU found"
    speakf
    clear
    speak="Auto installing CHOTU"
    speakf
    clear
    cd
    rm -rf chotu
    git clone https://github.com/shannuu/chotu > /dev/null 2>&1
    speak="New version installed, restart CHOTU to apply changes"
    speakf
    clear
    exit
fi
