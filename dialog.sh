dialogf(){
    ter=$(termux-dialog $widget $values -t "$title" | jq ".text" -r)
}
