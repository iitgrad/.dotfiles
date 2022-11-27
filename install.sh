# These two commands should be done before running this script
# sudo apt-get update
# sudo apt --assume-yes install git
sudo apt --assume-yes install stow
sudo apt --assume-yes install zsh
sudo chsh -s $(which zsh) $USER
touch .zshrc
exec zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo 'source ~/.p10k.zsh' >>~/.zshrc
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cd ~/.dotfiles
stow git
stow zsh
stow p10k

# sudo apt --assume-yes install neovim
# sudo apt --assume-yes install nodejs
# sudo apt --assume-yes install npm
