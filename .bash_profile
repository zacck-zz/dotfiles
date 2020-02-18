source ~/.bashrc
export NVM_DIR="/Users/zacck/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


#Enable git completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
#
#. $HOME/.asdf/asdf.sh
#
#. $HOME/.asdf/completions/asdf.bash

#HISTFILESIZE=1000000000
#HISTSIZE=1000000

#export PATH="$PATH:`yarn global bin`"

#. $HOME/.asdf/asdf.sh

#. $HOME/.asdf/completions/asdf.bash

#export PATH="$HOME/.cargo/bin:$PATH"

