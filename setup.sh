echo "creating symlinks to dotfiles..."
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.hgrc ~/.hgrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/check_for_updates.sh ~/check_for_updates.sh


echo "downloading oh-my-zsh..."
if [ ! -d ~/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# Make sure zsh is used
if [ ! -n $ZSH_VERSION ]; then
  echo "setting shell to zsh..."
  chsh -s `which zsh`
fi

echo "done!"

exit 0
