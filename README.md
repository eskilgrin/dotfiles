# Dotfiles

This repository contains my personal dotfiles for configuring my development environment, including `.zshrc`, `.vimrc`, and a folder of custom Zsh functions.

> **Note**: [Brew](https://brew.sh/) is used

## Installation

To use these dotfiles, follow the steps below to download and set them up.

### Download the Repository

Use the following command to download and extract the dotfiles into a `~/.dotfiles` directory:

```bash
curl -L https://github.com/eskilgrin/dotfiles/archive/refs/heads/master.tar.gz | tar -xz
mv dotfiles-master ~/.dotfiles
```


### To activate .zshrc:
```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
```

##### To download zsh dependencies:
```bash
git clone https://github.com/zsh-users/zsh-completions ~/.config/zsh/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
