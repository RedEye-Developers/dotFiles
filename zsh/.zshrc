### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# Zsh Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light Aloxaf/fzf-tab

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

# Evals
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Sources
source <(fzf --zsh)

# Initialize native Zsh completion system
autoload -Uz compinit && compinit

# Stylings
## fzf-tab Stylings
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' switch-group '<' '>'

# Alias
alias f='fzf --preview="bat --color=always {}"'
alias fe='nvim $(fzf -m --preview="bat --color=always {}")'
alias fc='bat --color=always $(fzf -m --preview="bat --color=always {}")'
alias cd='z'
alias q='exit'
alias an='annotator'
alias ls='eza -l --color=always --icons=always'

# Exports
export PATH="$HOME/.dotnet:$HOME/.dotnet/tools:$HOME/DevTools:$PATH"
export DOTNET_ROOT="$HOME/.dotnet"
export DOTNET_ROOT_X64="$HOME/.dotnet"
export XDG_CURRENT_DESKTOP=i3
export KEYTIMEOUT=1
export AWS_ENDPOINT_URL=http://localhost:4566
export AWS_ACCESS_KEY_ID=test
export AWS_SECRET_ACCESS_KEY=test
export AWS_DEFAULT_REGION=us-east-1
export _ZO_CASE=insensitive

# ZshCmdHistory
HISTFILE=~/.zsh_history # Where to save your command history
HISTSIZE=10000 # How many commands to keep in the active terminal memory
SAVEHIST=10000 # How many commands to actually save in the history file
setopt INC_APPEND_HISTORY # Automatically write to the history file immediately after executing a command

# CommandFunctions
## Yazi-Navigation
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}

. "$HOME/.local/bin/env"
