# BREW
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Own methods
source ~/dotfiles/zsh_functions/.ff_zsh # ctrl + f
source ~/dotfiles/zsh_functions/.aliases_zsh
source ~/dotfiles/zsh_functions/.prompt_function_zsh
source ~/dotfiles//zsh_functions/.mcdir_zsh # creates and enters new directory
source ~/dotfiles/zsh_functions/.edit_line_zsh # ctrl + e edits command line in vim

#Plugins
source $ZDOTDIR~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZDOTDIR~/.config/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
#source $ZDOTDIR~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

#LS_Colors
export LS_COLORS='di=10'

#Path
export PATH=/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}
export PYTHONUSERBASE="$HOME/.local/share/python"

# Tab completion
autoload -Uz compinit && compinit

# Enable colors
autoload -U colors && colors
setopt prompt_subst

# PROMPT
# Set a simplified Zsh prompt with custom branch color
PROMPT='%{$fg_bold[green]%}%~%{$reset_color%} $(git_prompt_info) %{$fg[magenta]%}➜%{$reset_color%} '

#Prompt
#ZSH_HIGHLIGHT_STYLES[command]='fg=#8e8e8e'
#setopt PROMPT_SUBST
#PROMPT='
#%F{#f9cb9c}%2~ %f🚀 '
#PROMPT='
#%F{magenta}%~ > % '
