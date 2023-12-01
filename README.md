# dotfiles
My personal dotfiles
- These are my dotfiles and cheatsheets for basic Terminal setup on MacOS / Linux / Windows WSL2.

# Setup ZSH
- Run the installation commands below
- copy .zshrc file and directories to your $HOME directory
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z

#Fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
### Iterm2 
- [Iterm2 file](./itermProfile.json)
- Iterm2 colors
```
cd ~/Downloads && curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
```