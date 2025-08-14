# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=150
SAVEHIST=300
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ghost/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

# Git
# Load version control into prompt
autoload -Uz vcs_info
precmd() { vcs_info }
# Set branch details into prompt
zstyle ':vcs_info:git*' formats '[git:%b]'
zstyle ':vcs_info:git:*' actionformats '[git:%b|%a]'
setopt PROMPT_SUBST
PROMPT='%F{yellow}%2~%f $ '
RPROMPT='%F{red}${vcs_info_msg_0_}%f'

export EDITOR="nvim"
export VISUAL="nvim"

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias waybar-reload='pkill waybar && hyprctl dispatch exec waybar'
alias waybar-load='hyprctl dispatch exec waybar'
alias zsh-reload='source ~/.zshrc;echo "Zsh sourced."'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
# Neovim config aliases
alias nvim-zsh='nvim ~/.zshrc'
alias nvim-hyprland='cd ~/.config/hypr/ && nvim hyprland.conf'
alias nvim-wezterm='nvim ~/.wezterm.lua'
alias nvim-nvim='cd ~/.config/nvim && nvim .'
alias nvim-waybar='cd ~/.config/waybar/ && nvim .'

# Path
# LSP
path+=~/.local/bin/lua-language-server/bin/
export PATH

# Keybindings (fix Home/End/Del keys)
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# Add nvm
. /usr/share/nvm/init-nvm.sh

# Sources
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/auto-suggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
