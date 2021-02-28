# enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# define the ZSH theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# define the used ZSH plugins
plugins=(git)

# inject oh-my-zsh file
source $ZSH/oh-my-zsh.sh

# inject p10k file
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# set clip alias
alias clip="xclip -selection clipboard"
