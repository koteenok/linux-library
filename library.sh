#!/bin/bash

# 1. Обновление и база
sudo apt update && sudo apt upgrade -y
sudo apt install neofetch git curl -y

curl -LO https://github.com/fastfetch-cli/fastfetch/releases/download/2.62.1/fastfetch-linux-aarch64.deb && sudo apt install ./fastfetch-linux-aarch64.deb -y && rm fastfetch-linux-aarch64.deb

sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

sudo chsh -s $(which zsh) $(whoami)

echo "Готово! Перезайди в терминал и запусти p10k configure"
