nix-env -iA nixpkgs.zsh \
  nixpkgs.antibody \
  nixpkgs.neovim \
  nixpkgs.tmux \
  nixpkgs.stow \
  nixpkgs.bat \
  nixpkgs.direnv

# add zsh into legal shells
command -v zsh | sudo tee -a /etc/shells

# change to the zsh shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh.plugins.sh
