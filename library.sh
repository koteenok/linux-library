sudo apt update
sudo apt upgrade
sudo apt install neofetch
CUR_DIR=$(pwd) && mkdir -p ~/.config/neofetch && cd ~/.config/neofetch
curl -L -o config.conf https://raw.githubusercontent.com/chick2d/neofetch-themes/refs/heads/main/normal/talljoe.conf
cd "$CUR_DIR" 
