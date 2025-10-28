# Created by newuser for 5.9
# Add Path
export PATH=$PATH:$HOME/.local/bin

# extra plugins
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# alias
alias ls='eza --icons=auto'
alias cat='bat'

# keybind
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#abbr plugin
source /usr/share/zsh/plugins/zsh-abbr/zsh-abbr.zsh

# autosuggestions and syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/alien/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# command not found
source /usr/share/doc/pkgfile/command-not-found.zsh
