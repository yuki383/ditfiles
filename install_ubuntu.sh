#!/bin/bash

DIR=$(cd $(dirname $0); pwd);

# make symboliclink
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

# install nvm and node
if !(type "node" > /dev/null 2>&1); then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
  nvm install v18
fi

