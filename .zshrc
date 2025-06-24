# ZSH
export ZSH="$HOME/.oh-my-zsh"

# Detect terminal and apply theme accordingly
if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
  # Use Starship in Ghostty
  eval "$(starship init zsh)"
else
  # Use Powerlevel10k elsewhere
  source ~/powerlevel10k/powerlevel10k.zsh-theme
  # export ZSH_THEME="~/powerlevel10k/powerlevel10k.zsh-theme"
fi

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search fzf)

# Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Reset PATH to system defaults first
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# --- Conda Setup ---
if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
  . "/opt/miniconda3/etc/profile.d/conda.sh"
  export CONDA_AUTO_ACTIVATE_BASE=false
fi

# Homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Go
export PATH="$PATH:$HOME/go/bin"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Airflow
export AIRFLOW_HOME=~/airflow

# Java
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export PATH="$JAVA_HOME/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Flutter & Dart
export DART_SDK="$HOME/flutter/bin/cache/dart-sdk"
export PATH="$PATH:$DART_SDK/bin"
export PATH="$PATH:$HOME/flutter/bin"

# Android
export ANDROID_HOME=$HOME/android/

# PostgreSQL
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Source p10k config only if not using Ghostty
if [[ "$TERM_PROGRAM" != "Ghostty" && -f ~/.p10k.zsh ]]; then
  source ~/.p10k.zsh
fi

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Bun completions
[ -s "/Users/mikee/.bun/_bun" ] && source "/Users/mikee/.bun/_bun"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Github Info
function git-info() {
    echo "Current user.name: $(git config --global user.name)"
    echo "Current user.email: $(git config --global user.email)"
    if git remote -v > /dev/null 2>&1; then
        echo "Current remote URL: $(git remote -v | head -n 1)"
    else
        echo "No remote repository configured."
    fi
}

# Github Account Switcher
function git-switch() {
    case "$1" in
        personal)
            git config --global user.name "Manpreet Singh"
            git config --global user.email "msp99000@gmail.com"
            echo "Switched to Personal"
            ;;
        geek)
            git config --global user.name "Geek Lowkey"
            git config --global user.email "thegeeklowkey@gmail.com"
            echo "Switched to Geek"
            ;;
        upcore)
            git config --global user.name "Gaurav Passi"
            git config --global user.email "er.gauravpassi@gmail.com"
            echo "Switched to Upcore"
            ;;
        cellfinder)
            git config --global user.name "Arif"
            git config --global user.email "b24bs1058@iitj.ac.in"
            echo "Switched to Cellfinder"
            ;;
        dhira)
            git config --global user.name "Manpreet Singh"
            git config --global user.email "manpreet.singh@dhira.io"
            echo "Switched to Dhira"
            ;;
        *)
            echo "Usage: git-switch [personal | geek | upcore | cellfinder | dhira]"
            return 1
            ;;
    esac
    echo "Remember to check your remote URL with 'git remote -v' and update if necessary."
}

# DHAN DHAN BABA DEEP SINGH JI
function dhan_dhan_baba_deep_singh_ji() {
    echo " "
    echo "            *******************************    "
    echo " "
    echo "            DHAN DHAN BABA DEEP SINGH JI 🪯    "
    echo " "
    echo "            *******************************    "
    echo " "
}

# Create an alias to call the function
alias 'ddbdsj'='dhan_dhan_baba_deep_singh_ji'
alias 'cls'='clear'
alias 'll'='eza -l --icons'
alias 'ls'='eza --icons'
alias 'la'='eza -a --icons'
# alias 'ls'='lsd'
# alias 'la'='lsd -a'
alias 'cat'='bat'
# alias 'tree'='lsd --tree'
alias 'tree'='eza --tree'
alias 'itree'='eza --tree --icons'

autoload -Uz compinit
compinit
