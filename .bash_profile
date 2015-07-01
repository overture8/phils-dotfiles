# rbenv
eval "$(rbenv init -)"

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# aliases
alias ll="ls -alG"
alias vim="/usr/local/Cellar/vim/HEAD/bin/vim"
alias vi="/usr/local/Cellar/vim/HEAD/bin/vim"
alias his="history | cut -c8- | sort -u | pick"
alias pt="papertrail"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL ]]

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$HOME/.node/bin:~/bin:$PATH"

# Default editor
export EDITOR='vim'

# Tmuxinator config
source ~/tmuxinator.bash
