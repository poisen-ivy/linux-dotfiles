# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    zoxide
    brew
)

source $ZSH/oh-my-zsh.sh
export PATH=/home/ivey/.local/bin:$PATH
# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/folders in terminal
alias ls='eza --long --color=always -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/ivey/.spicetify
export PATH=$PATH:$HOME/Applications


# . "$HOME/.atuin/bin/env"


autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

eval "$(atuin init zsh)"
# ---- THeFuck ----
eval $(thefuck --alias)
eval $(thefuck --alias fk)
# ---- Scripts ----
alias swww-picker="$HOME/Documents/Scripts/swww-picker"
alias fs="fastfetch"

. "$HOME/.local/bin/env"

alias tn='tmux new session -s'
alias tl='tmux list-sessions'
alias ta='tmux attach-session'
