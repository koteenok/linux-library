sudo apt update
sudo apt upgrade
sudo apt install neofetch
sudo apt install kitty
CUR_DIR=$(pwd) && mkdir -p ~/.config/neofetch && cd ~/.config/neofetch
curl -L -o config.conf https://raw.githubusercontent.com/Chick2D/neofetch-themes/refs/heads/main/normal/eldfetch.conf
cd "$CUR_DIR" 
