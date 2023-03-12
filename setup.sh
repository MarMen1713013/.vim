#!/bin/bash

mkdir autoload
mkdir plugged
mkdir undodir

dir="$(pwd)/autoload"
echo ${dir}
curl -fLo "${dir}/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

