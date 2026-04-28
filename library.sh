sudo apt update
sudo apt upgrade
sudo apt install neofetch

CUR_DIR=$(pwd) && mkdir -p ~/.config/neofetch && cd ~/.config/neofetch
curl -L -o config.conf https://raw.githubusercontent.com/chick2d/neofetch-themes/refs/heads/main/normal/config.conf
cd "$CUR_DIR" 

sudo apt update && sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

source ~/.zshrc
