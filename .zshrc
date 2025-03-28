export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ls='lsd'
alias nv='nvim'
alias tree='exa --icons=always --tree'
alias ipinfo='ip -br -c a'
prompt_context(){}

export EDITOR=nvim
export ANDROID_HOME=$HOME/Android/Sdk
export DOTNET_ROOT=$HOME/.dotnet
export JAVA_HOME=/usr/lib/jvm/java-22-openjdk
export GEM_HOME=$HOME/.gem

export PATH=$JAVA_HOME/bin:$PATH
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.2.0/bin:$HOME/.local/bin:$HOME/go/bin:/usr/local/bin:$HOME/.dotnet:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$HOME/.dotnet"
export PATH=$GEM_HOME/bin:$PATH

export R_LIBS_USER=$HOME/R/x86_64-pc-linux-gnu-library/4.4

alias vim='nvim'
alias pac='sudo pacman'
alias sys='sudo systemctl'
alias hypr='nvim ~/.config/hypr/hyprland.conf'
alias nnn='nnn -d -e -H -r'
export TIMEFMT=$'%E real\n%U user\n%S sys'
pokemon-colorscripts -r
export PATH="${PATH}:${HOME}/.local/bin/"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh



export PATH=$PATH:/home/zecoa/.spicetify
export GTK_THEME=Adwaita:dark
echo '\e[5 q'

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/zecoa/.dart-cli-completion/zsh-config.zsh ]] && . /home/zecoa/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

