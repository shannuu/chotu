if [[ $(cat $dir/.version) != $(curl https://raw.githubusercontent.com/shannuu/chotu/main/utils/.version) ]]; then
    speak="New version of CHOTU found"
    speakf
    clear
    speak="Auto installing CHOTU"
    speakf
    clear
    cd
    rm -rf chotu
    git clone https://github.com/shannuu/chotu 2>&1 > /dev/null
    speak="New version installed, restart CHOTU to apply changes"
    speakf
    clear
    exit
fi
