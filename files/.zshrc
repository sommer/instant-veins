#
# .zshrc
#
unsetopt flow_control
setopt nobeep
setopt printexitvalue
setopt inc_append_history
setopt extended_history
setopt hist_ignore_space
setopt hist_ignore_dups
setopt prompt_subst

HISTSIZE=102400
HISTFILE=~/.zsh_history
SAVEHIST=102400

autoload -Uz compinit && compinit
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

autoload -U colors && colors
case "$TERM" in
        *xterm*|rxvt|terminator|(dt|k|E)term|screen)
                PROMPT='%{$fg_bold[red]%}%n:%{$fg_bold[blue]%}%~%{$fg_bold[red]%}%#%{$reset_color%} '
        ;;
        *)
                PROMPT='%n@%m:%~%# '
        ;;
esac

alias ll='ls -la'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

