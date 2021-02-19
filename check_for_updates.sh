#!/bin/sh
# This script will update brew and npm if its been more than 7 days
# since last time it was executed

function _current_epoch() {
  echo $(($(date +%s) / 60 / 60 / 24))
}

function _update_epoch_file() {
  echo "LAST_EPOCH=$(_current_epoch)" > ~/.system-update-epoch
}

function _upgrade_system() {
  echo "\n brew update..."
  brew update
  echo "\n brew upgrade..."
  brew upgrade
  # pip?
  #pip install --upgrade setuptools
  #pip install --upgrade pip
  # ruby
#  echo "\n gem update --system..."
 # gem update --system
#  echo "\n gem update ..."
#  gem update
  ./backup_protected_dotfiles.sh
  _update_epoch_file
}

update_interval=7 #days


if [ -f ~/.system-update-epoch ]
then
  . ~/.system-update-epoch

  if [[ -z "$LAST_EPOCH" ]]; then
    _update_epoch_file && return 0;
  fi

  epoch_diff=$(($(_current_epoch) - $LAST_EPOCH))
  if [ $epoch_diff -gt $update_interval ]
  then
    echo "[System updater] Would you like to check for updates?"
    echo "Type Y to update brew: \c"
    read line
    if [ "$line" = Y ] || [ "$line" = y ]; then
      _upgrade_system
    else
      _update_epoch_file
    fi
  fi
else
  # create the epoch file
  _update_epoch_file
fi

exit 0
