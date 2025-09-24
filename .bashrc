
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Exports
export STARSHIP_CONFIG=~/.config/starship/starship.toml # change default starship config directory

export HISTTIMEFORMAT="%F %T " # add timestamps to history
export HISTCONTROL=ignoredups # ignore duplicates

shopt -s checkwinsize # resize the window after each command if necessary

shopt -s histappend # append history of each terminal instead of overwriting 
PROMPT_COMMAND='history -a'

# Alias
alias vim='nvim'
alias svim='sudo nvim'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias pacman='sudo pacman'
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias la='ls -Alh'
alias lx='ls -lXBh'
alias lk='ls -lSrh'
alias lc='ls -ltcrh'
alias lu='ls -lturh'
alias lr='ls -lRh'
alias lt='ls -ltrh'
alias lw='ls -xAh'
alias ll='ls -Fls'
alias labc='ls -lap'

alias todo='vim ~/Documents/Notes/to-do.txt'
alias movies='vim ~/Documents/Notes/movies-shows.txt'
alias gym='vim ~/Documents/Notes/gym.txt'

# Dotfile management

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Add starship only in GUI
if [[ "$TERM" != "linux" ]]; then
    eval "$(starship init bash)"
fi
