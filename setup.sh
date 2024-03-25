if [ ! -d ~/dotfiles ]; then
  echo "dotfiles repo must be in ~/dotfiles "
  exit 1
fi

echo "creating symlinks to dotfiles..."
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/check_for_updates.sh ~/check_for_updates.sh
ln -s ~/dotfiles/bin ~/bin

source osx.sh

echo "done!"

exit 0
