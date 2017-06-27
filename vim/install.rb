#!/usr/bin/env ruby

puts "writing .vimrc"
`cp vimrc ~/.vimrc`

puts "cloning pathogen"
`git clone https://github.com/tpope/vim-pathogen.git ~/.vim/autoload/pathogen.vim`

puts "cloning Ctrl-P"
`git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim`

puts "cloning Nerdtree"
`git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree`

puts "cloning Vim Unimpaired"
`git clone git://github.com/tpope/vim-unimpaired.git ~/.vim/bundle/vim-unimpaired`

puts "cloning Vim Solarized"
`git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized`

puts "cloning Vim Elixir"
`git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir`
