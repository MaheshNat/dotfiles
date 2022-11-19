function hgrep() {
  history | grep $1
}

function mgrok() {
  ssh -N -R localhost:4242:localhost:$1 ubuntu@tunnel.maheshnatamai.com;
}

function gitp() {
  git add . && git commit -m $1 && git push;
}

function gitpf() {
  git add . && git commit -m $1 && git push -u origin master;
}

function ex() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

function clipcopy() { xclip -in -selection clipboard < "${1:-/dev/stdin}"; }
function clippaste() { xclip -out -selection clipboard; }