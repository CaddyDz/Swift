export ZSH=/home/caddy/.oh-my-zsh
ZSH_THEME="caddy"
plugins=(git debian vagrant github laravel sudo wakatime-zsh)
source $ZSH/oh-my-zsh.sh
alias zshconf="nano ~/.zshrc"
alias omz="cd ~/.oh-my-zsh"
alias dotfiles="cd ~/Documents/dotfiles/"
alias size="wc -c"
alias caddy="cd ~/Documents/Caddy/"
alias english="cd ~/Documents/English && atom ."
alias wip="git add . && git commit -m 'wip'"
alias nah="git checkout -- . && git reset --hard HEAD && git clean -f"
alias install="sudo dpkg -i"
alias lan="sudo ifconfig"
alias fr="setxkbmap fr"
alias en="setxkbmap us"
function v() {
    ( cd ~/Homestead && vagrant $* )
}
function srv(){
	( sudo service $* )
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
