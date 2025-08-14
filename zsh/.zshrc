# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Exports
#export ZPLUG_HOME=~/.config/zsh/

# Sources
source ~/.config/zsh/init.zsh
source ~/.config/zsh/scripts/zsh-syntax-highlighting.sh

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Auto Loads
autoload -U colors && colors

# Put all completions files here
fpath+=~/.config/zsh/autocomp/

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug 'romkatv/powerlevel10k', as:theme, depth:1
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-history-substring-search'
#zplug 'dracula/zsh' 
#zplug 'starship/starship'

zplug load

# Global Variables
#TERM=st
CONDARC="$XDG_CONFIG_HOME/conda/condarc"
PATH=~/android-studio/bin/:$PATH
GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
_JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
# Keybinds for zsh-history-substring-search
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# Aliases
alias ls='ls --color=auto'
alias la='ls -A'
alias lA='ls -Al'
alias l='exa --icons'
alias ll='l -lh'
alias df='df -h'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias mpva='mpv --no-video'
alias re='source ~/.zshrc'
alias python='python3'
alias gitc='git commit -m'
alias gitp='git push -u'
alias nvidia-smi='watch -d -n 0.5 nvidia-smi'
alias cdw='cd /home/ldx/src/kaggle/'
alias duc='du -h --max-depth=0'
alias temp='watch -n1 sensors'
alias b='byobu'
alias pldns='ping 110.172.55.126' 
alias pf='poweroff'
alias rs='reboot'
alias vim='nvim'
alias gits='git status'
alias gitc='git commit -m'
alias gitca='git commit -am'
alias gitl='git log'
alias gitb='git checkout'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Conda
PATH=~/.local/bin/bin:$PATH
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ldx/bin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ldx/bin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ldx/bin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ldx/bin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# ~/.zshrc

#eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
