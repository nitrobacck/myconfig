## ALIASES
alias vim=nvim

# git
alias gi="git init"
alias gap="git add -p"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"

autoload -Uz compinit

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="geoffgarside"

source $ZSH/oh-my-zsh.sh

# oh-my-zsh plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# CUSTOM
set +m

# zsh-autosuggest config
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
