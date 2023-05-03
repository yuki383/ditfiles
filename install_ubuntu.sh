#!/bin/bash

DIR=$(cd $(dirname $0); pwd);

# make symboliclink
if [ ! -e ~/.zshrc  ]; then
  ln -s "${DIR}/zshrc" "${HOME}/.zshrc"
fi

if [ ! -e ~/.vimrc  ]; then
  ln -s "${DIR}/vimrc" "${HOME}/.vimrc"
fi

if [ ! -e ~/.vim  ]; then
  ln -s "${DIR}/vim" "${HOME}/.vim"
fi

# install vim-plug
if [ ! -e ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


# apt update
sudo apt update

if !(type "unzip" > /dev/null 2>&1); then
  sudo apt install unzip
fi

# install deno
if !(type "deno" > /dev/null 2>&1); then
  curl -fsSL https://deno.land/x/install/install.sh | sh
fi

# install pnpm
if !(type "pnpm" > /dev/null 2>&1); then
  curl -fsSL https://get.pnpm.io/install.sh | sh -
fi

# install node
if !(type "node" > /dev/null 2>&1); then
  pnpm env use --global lts
fi

# setup zsh
if !(type "zsh" > /dev/null 2>&1); then
  sudo apt install zsh
fi

if !(type "zplug" > /dev/null 2>&1); then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

# デフォルトシェルをzshに変更
chsh -s $(which zsh)

