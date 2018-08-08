#!/bin/bash

git pull --recurse-submodules
cp -R .vim/ ~/.vim/
cp .vimrc ~/.vimrc
