alias cl='clear'
alias gst='git status'
alias gpl='git pull'
alias nrd='npm run dev'
alias zzz='shutdown -h now'
alias gaa='git add .'
alias gpsh='git push'
alias zz='exit'
alias gbr='git branch'
alias gbra='git branch -a'

gplo() {
  if [ -z "$1" ]; then
    echo "Please provide a branch name."
  else
    git pull origin "$1"
  fi
}
gcm() {
  if [ -z "$1" ]; then
    echo "Please provide a commit message."
  else
    git commit -m "$1"
  fi
}

gclo() {
  if [ -z "$1" ]; then
    echo "Please provide a repository url."
  else
    git commit -m "$1"
  fi
}

gcln() {
  if [ -z "$1" ]; then
    echo "Please provide a repository url."
  else
    git clone "$1"
  fi
}
