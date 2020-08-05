
# Heroku Toolbelt Path
export PATH="/usr/local/heroku/bin:$PATH"

# Main Path
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH:$ZSH/bin:$PATH"

## rbenv Path
export PATH="$HOME/.rbenv/bin:$PATH"

# VS Code Path
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Composer Path
export PATH="$HOME/.composer/vendor/bin:$PATH"

# NVM Path
export NVM_DIR="$HOME/.nvm"

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
