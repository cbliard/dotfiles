# Taken from the StackOverflow top answer at
# http://stackoverflow.com/questions/10081293/install-npm-into-home-directory-with-distribution-nodejs-package-ubuntu

# ###########
# disable some parts while trying nvm
# ##########

# NPM packages in homedir
#NPM_PACKAGES="$HOME/.npm-packages"

# Tell our environment about user-installed node tools
#PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
#unset MANPATH
#MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Tell Node about these packages
#NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

