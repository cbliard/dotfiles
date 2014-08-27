if ! [ -e ~/.vim/autoload/pathogen.vim ]; then
  echo "Vim: installing pathogen autoloading"
  mkdir -p ~/.vim/autoload ~/.vim/bundle
  curl -SLso ~/.vim/autoload/pathogen.vim \
      https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

