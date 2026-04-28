sudo apt update
sudo apt upgrade
sudo apt install neofetch
sudo apt install kitty
CUR_DIR=$(pwd) && mkdir -p ~/.config/neofetch && cd ~/.config/neofetch && \
curl -L -o config.conf https://raw.githubusercontent.com/Chick2D/neofetch-themes/refs/heads/main/normal/nyarch/config.conf && \
curl -L -o nyarch.png https://raw.githubusercontent.com/Chick2D/neofetch-themes/refs/heads/main/normal/nyarch/nyarch.png && \
sed -i "s|image_source=.*|image_source=\"$HOME/.config/neofetch/nyarch.png\"|g" config.conf && \
cd "$CUR_DIR" 
