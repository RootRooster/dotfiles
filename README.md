# My dot files
These are the dot files required to replecate my developer enviorment on any computer. Please follow the installation guide below.

## Installation
Before starting the installation process make sure you have homebrew installed.

Please run the following command into your terminal. It will install all the tools needed to run my dev enviorment.
```
brew install stow && brew install neovim && brew install koekeishiya/formulae/yabai && brew install koekeishiya/formulae/skhd && brew install zoxide && brew install ripgrep && brew install bat && brew install tmux && brew install fzf && brew install fd && brew install git-delta && brew install eza && brew install tlrc && brew install thefuck && brew install neofetch && brew install btop && brew install --cask kitty && brew install wget && brew install --cask nikitabobko/tap/aerospace && brew install openjdk
```

Install neovide - a rust based NeoVim editor.
```
brew install --cask neovide
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
For zsh to work:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```
For tmux to install the plugins: Open tmux and type `prefix + I`. Prefix is by defailt set to control+b.

Finally run the command below in the ~/.dotfiles directory
```
stow .
```

## Starting yabai and skhd - legacy 
Type in the following commands to start yabai and skhd. Yabai and skhd have been replaced with aerospace.
```
yabai --start-service
```
```
skhd --start-service
```
```
yabai --restart-service
```
```
skhd --restart-service
```

## Rebuilding bat command catche
This config comes with bat to print files. If bat is not installed follow the steps on this GitHub repo: [GitHub](https://github.com/catppuccin/bat).


## TODOS
Maybe replace the current java configuration by deleting the openjdk in brew and removing the current java zshrc config. Replacing it with jenv:
https://www.jenv.be/
Need to figure out if this is better.
