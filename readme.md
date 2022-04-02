# dotfiles

My dotfiles

## Install

```sh
$ mkdir -m 700 ~/.dotfiles
$ git clone https://github.com/vivsy/dotfiles.git ~/.dotfiles
$ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
$ ~/.dotfiles/install.sh
$ chsh -s "$(command -v zsh)"
```
