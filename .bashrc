#add some aliases to make git usage simpler
alias branch='git branch'
alias commit='git commit'
alias checkout='git checkout'
alias push='git push'
alias status='git status'
alias diff='git diff'
alias add='git add'
alias pull='git pull'
alias buildapk='./gradlew assembleRelease'
alias ls='ls -al'
alias mixt='MIX_ENV=test mix test'

#modify terminal prompt
export PS1="\u 😈  \W $ "

export PATH="$HOME/.fastlane/bin:$PATH"
export ERL_AFLAGS="-kernel shell_history enabled"
export REACT_EDITOR=vim
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

# added by travis gem
#[ -f /Users/zacck/.travis/travis.sh ] && source /Users/zacck/.travis/travis.sh

# Haskell sources
#export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"


#. $HOME/.asdf/asdf.sh

#. $HOME/.asdf/completions/asdf.bash

#. $HOME/.asdf/asdf.sh

#. $HOME/.asdf/completions/asdf.bash

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
