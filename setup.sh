 if [ -d ~/.vim ]; then 
  mv ~/.vim ~/.vim.bak
 fi
 ln -s ~/vimfiles ~/.vim
 ln -s ~/.vim/vimrc ~/.vimrc
 ln -s ~/.vim/gvimrc ~/.gvimrc
 git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
 vim +BundleInstall +qall
 cd ~/.vim/bundle/Command-T && rvm use system && rake make
 cd -

