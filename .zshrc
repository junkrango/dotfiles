#  ██████                           ██ ██   ██   ██      ██ ██    ██
# ░█░░░░██                         ░██░░   ░██  ░██     ░██░░    ░░
# ░█   ░██   ██████   ███████      ░██ ██ ██████░██     ░██ ██    ██  ██████
# ░██████   ░░░░░░██ ░░██░░░██  ██████░██░░░██░ ░██████████░██   ░██ ██░░░░██
# ░█░░░░ ██  ███████  ░██  ░██ ██░░░██░██  ░██  ░██░░░░░░██░██   ░██░██   ░██
# ░█    ░██ ██░░░░██  ░██  ░██░██  ░██░██  ░██  ░██     ░██░██ ██░██░██   ░██
# ░███████ ░░████████ ███  ░██░░██████░██  ░░██ ░██     ░██░██░░███ ░░██████
# ░░░░░░░   ░░░░░░░░ ░░░   ░░  ░░░░░░ ░░    ░░  ░░      ░░ ░░  ░░░   ░░░░░░
#
#                 ██
#                ░██
#  ██████  ██████░██      ██████  █████
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/bandithijo/.oh-my-zsh

# POWERLEVEL9K_MODE='awesome-fontconfig'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="blinks"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# For Remove username on oh-my-zsh
#prompt_context() {}

# For Remove Location
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias fireprox="proxychains env GTK_THEME=Adwaita firefox"

# BACKUP ENTIRE SYSTEM
alias devika!="sudo rsync -aAXvP --delete --exclude=dev --exclude=proc --exclude=sys --exclude=tmp --exclude=run --exclude=mnt --exclude=home/.ecryptfs / /run/media/bandithijo/BANDITHIJO-X260/BANDITHIJO-ARCH"

# tty-clock
alias clock="tty-clock -nscC 7"

# vimdiff
alias vimdiff="vim -d"

alias cal="cal -y"

# Enabling Menu Item Gnome
alias menuitem-enable="gsettings set org.gnome.settings-daemon.plugins.xsettings overrides \"{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}\""

# Upgrade all packages PIP
alias pip-superupgrade="pip freeze > list && sudo pip install -r list -U && rm list"
alias pip-upgrade="pip freeze > list && pip install -r list -U && rm list"

# XAMPP
alias lampp="sudo /opt/lampp/lampp"
alias lampp-start="sudo /opt/lampp/lampp start"
alias lampp-stop="sudo /opt/lampp/lampp stop"

# POSTBANNER
alias lolban="postbanner -t '-f 3d.flf' -l '-p 10'"

# key-mon fix
alias key-mon-fix="xhost +"

# Wacom Area
alias wacom-move="xsetwacom --set \"Wacom One by Wacom S Pen stylus\" Area 1000 1000 3800 2375"
alias wacom-draw="xsetwacom --set \"Wacom One by Wacom S Pen stylus\" ResetArea"

# geteltorito
alias geteltorito="geteltorito.pl"

# POWERLINE ARCH
#if [[ -r /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#   source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

# PKGBUILD YAOURT
export VISUAL="vim"

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# PERL5
PATH="$HOME/.config/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/.config/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/.config/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/.config/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/.config/perl5"; export PERL_MM_OPT;

# JAVA_HOME
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/"
#export JAVA_HOME="/usr/lib/jvm/java-9-openjdk/"
#export JAVA_HOME="/usr/lib/jvm/java-8-jdk/"
#export JAVA_HOME="/usr/lib/jvm/java-9-jdk/"
export PATH="$JAVA_HOME/bin:$PATH"

# NPM Environment
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix="$HOME/.node_modules"

# URXVT Environment akan berpengaruh ke tmux color
#export TERM=rxvt-unicode

# Local /bin
PATH="$HOME/bin:$HOME/src:$HOME/.local/bin:$PATH"
export PATH

# Vim as Manpager
# for Vim
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""
# for NeoVim
export MANPAGER="nvim +set\ filetype=man -"















[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export GPG_TTY=$(tty)
