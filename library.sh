sudo apt update
sudo apt upgrade
sudo apt install neofetch
sudo apt install kitty
CUR_DIR=$(pwd) && mkdir -p ~/.config/neofetch && cd ~/.config/neofetch
curl -L -o config.conf https://raw.githubusercontent.com/koteenok/linux-library/refs/heads/main/myconf.conf
cd "$CUR_DIR" 
