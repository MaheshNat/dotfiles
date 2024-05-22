alias tr="trash-put"
alias trr="trash-restore"
alias te="trash-empty"
alias tl="trash-list"
alias python="python3"
alias pip="pip3"
alias vi="vim"
alias vim="nvim"
alias stowalladopt="cd ~/dotfiles && stow --adopt -vt ~ */ --no-folding"
alias stowall="cd ~/dotfiles && stow -vt ~ */ --no-folding"
alias venv="python3 -m venv env && source env/bin/activate"
alias senv="source env/bin/activate"
alias dpac="paccache -dvk2"
alias rpac="paccache -rvk2"
alias capswitch="setxkbmap -option \"caps:escape_shifted_capslock\""
alias z="zoxide"
# Directory aliases
alias cdots="cd $HOME/dotfiles"
alias cdocs="cd $HOME/documents"
alias cdown="cd $HOME/Downloads"
alias cdconf="cd $XDG_CONFIG_HOME"
alias cdss="cd $HOME/pictures/screenshots"
alias cdrsb="cd $HOME/documents/tutorials/rust-book"
alias cdproj="cd $HOME/documents/projects"
alias jwt="node -e \"console.log(require('crypto').randomBytes(32).toString('hex'))\""