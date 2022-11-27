git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo 'source ~/.p10k.zsh' >>~/.zshrc
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cd ~/.dotfiles
stow git
stow p10k
cd ~
sudo chsh -s $(which zsh) $USER

sudo apt --assume-yes install neovim
sudo apt --assume-yes install nodejs
sudo apt --assume-yes install npm
