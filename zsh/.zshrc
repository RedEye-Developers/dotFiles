# Initialize native Zsh completion system
autoload -Uz compinit && compinit

# Zsh styling for the completion menu (enables arrow-key navigation)
zstyle ':completion:*' menu select

# Source community plugins (Arch Linux paths)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)

alias f='fzf --preview="bat --color=always {}"'
alias fe='nvim $(fzf -m --preview="bat --color=always {}")'
alias fc='bat --color=always $(fzf -m --preview="bat --color=always {}")'

# Keybindings: Use Right Arrow key to accept the auto-suggestion ghost text
# bindkey '^[[C' forward-word
bindkey -v
# PROMPT='%F{#f38ba8}%n%f:%F{#cba6f7}%1~%f > '

# Enable color support for ls
alias ls='ls --color=auto'

# Define custom colors: di = directory, fi = file
export LS_COLORS="di=01;34:fi=00"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.dotnet:$HOME/.dotnet/tools:$HOME/DevTools:$PATH"
export DOTNET_ROOT="$HOME/.dotnet"
export DOTNET_ROOT_X64="$HOME/.dotnet"
export XDG_CURRENT_DESKTOP=i3
export KEYTIMEOUT=1

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}

HISTFILE=~/.zsh_history # Where to save your command history
HISTSIZE=10000 # How many commands to keep in the active terminal memory
SAVEHIST=10000 # How many commands to actually save in the history file
setopt INC_APPEND_HISTORY # Automatically write to the history file immediately after executing a command
