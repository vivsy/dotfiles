#!/bin/sh

set -eu

printf 'warning: this may delete files. ok? [y/n] '
read -r ans
if [ "$ans" != y ]; then
  echo "answer was not 'y'"
  exit 1
fi

rm -rf ~/.hushlogin
touch ~/.hushlogin
chmod 600 ~/.hushlogin

rm -rf ~/.zshrc
ln -s ~/.dotfiles/zshrc.sh ~/.zshrc

mkdir -p ~/.config
rm -rf ~/.config/git
ln -sf ~/.dotfiles/git ~/.config/git
