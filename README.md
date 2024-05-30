# My dot files
These are the dot files required to replecate my developer enviorment on any computer. Please follow the installation guide below.

## Installation
Before starting the installation process make sure you have homebrew installed.

Please run the following command into your terminal. It will install all the tools needed to run my dev enviorment.
```
brew install stow && brew install neovim && brew install koekeishiya/formulae/yabai && brew install koekeishiya/formulae/skhd && brew install zoxide && brew install ripgrep && brew install bat && brew install tmux && brew install fzf && brew install fd && brew install git-delta && brew install eza && brew install tlrc && brew install thefuck 
```

You may also need to install the following.
For powerlevel10k theme:
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
For tmux package manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
For using fzf with git.
```
git clone https://github.com/junegunn/fzf-git.sh.git ~/.tools/fzf-git.sh
```

Finally run the command below in the ~/.dotfiles directory
```
stow .
```
