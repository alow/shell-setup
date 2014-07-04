HISTFILE=~/.history
HISTSIZE=20000
SAVEHIST=20000

export LANGUAGE="en_US.UTF-8"
#export LC_ALL="C"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export EDITOR="vim"

setopt inc_append_history
setopt share_history
setopt extended_history
setopt append_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

setopt auto_cd
setopt extendedglob

autoload -U colors && colors
setopt prompt_subst

unsetopt beep
unsetopt caseglob

bindkey -v
bindkey -e
setopt interactivecomments
setopt completeinword

autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^[OA' up-line-or-search

#PS1='[%*] %n@%m:%~# '
REPORTTIME=15

zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz compinit && compinit

# Aliases
# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias l="ls -lA"
alias ll="ls -lAt"
alias lr="ls -lAtr"
alias vi="vim"
alias h="history"

if [ -f ~/.zshrc_aliases ]; then
  . ~/.zshrc_aliases
fi

# Prompt functions
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo -e "${fg[yellow]}\x95${reset_color}" && return
    echo '%#'
}


PROMPT=$'%{${fg[green]}%}%*%{$reset_color%} %{$fg[red]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%}\n$(prompt_char) '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
