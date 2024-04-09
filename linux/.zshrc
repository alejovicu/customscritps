# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/alejovicu/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_AUTO_TITLE="true"

plugins=(
    kubectl
    yarn
    node
    iterm2
    zsh-autosuggestions
    git)

export ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# enable move forward and backward with option + arrow left/right in zsh
bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word

# aliases
alias bashedit="code $HOME/.zshrc"
export NVM_DIR="$HOME/.nvm"
export JAVA_HOME="/Users/alejovicu/.sdkman/candidates/java/current"
export PASSWORD_STORE="$HOME/.password-store"
alias reload='omz reload'

# Docker aliases
alias d.rmc='docker rm -f $(docker ps -a -q)'
alias d.rmi='docker rmi -f $(docker images -a -q)'
alias d.rmv='docker volume rm $(docker volume ls -q)'
alias d.rmn='docker network rm $(docker network ls -q)'


# Random functions

## Set tab title
function seti(){
  echo -n -e "\033]0;$@\007"
}


export SDKMAN_DIR="/Users/$USER/.sdkman"
[[ -s "/Users/$USER/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/$USER/.sdkman/bin/sdkman-init.sh"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

