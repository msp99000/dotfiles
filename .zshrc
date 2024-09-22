# ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search fzf)
source $ZSH/oh-my-zsh.sh

# Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Path 
export PATH="$HOME/.local/bin:/usr/local/bin/fvm:$PATH"

# Fzf keybindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Starship
# export STARSHIP_CONFIG="$HOME/.config/starship.toml"
# eval "$(starship init zsh)"

## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/meuralnetwork/.dart-cli-completion/zsh-config.zsh ]] && . /Users/meuralnetwork/.dart-cli-completion/zsh-config.zsh || true
