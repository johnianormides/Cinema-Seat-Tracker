#!/bin/bash

declare -r start='1'

echo "Begin?"
echo "1 for yes and 0 for no: "
read -r choice
echo "Port?"
read -r port
echo "Initialization Begininng"


sleep 2s

if [ "$choice" -eq  "$start" ]; then

 start1(){
    cd /opt/lampp || exit
    sudo xhost + 
    sudo systemctl start apache2
    sudo ./xampp start
    ##sleep 1s
    sudo ./manager-linux-x64.run & konsole -e bash -c "ngrok http --domain=star-panda-literally.ngrok-free.app 7070; exec bash" &
    
}
start1

start2(){
    cd /home/alejandro/Documents/School\ Files/html || exit
    code . &
}
start2

start3(){
    konsole -e bash -c  "ssh -R $port:localhost:$port serveo.net; exec bash"
    exit
}
start3

else {
    echo "Error"
}
fi
