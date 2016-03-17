set nocompatible               " be iMproved

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

filetype off                   " must be off before Vundle has run

set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'
" Bundle "mileszs/ack.vim"
Bundle "rking/ag.vim"
Bundle "tpope/vim-rvm"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-surround"
Bundle "chrismetcalf/vim-yankring"
Bundle "chrismetcalf/vim-taglist"
Bundle "tpope/vim-endwise"
Bundle "scrooloose/syntastic"
Bundle "Townk/vim-autoclose"
Bundle "scrooloose/nerdtree"
Bundle "panozzaj/vim-autocorrect"
Bundle "tomtom/tcomment_vim"
Bundle "sjl/gundo.vim"
Bundle "godlygeek/tabular"
Bundle "vim-scripts/Gist.vim"
Bundle "vim-scripts/L9"
Bundle "Bogdanp/rbrepl.vim"
Bundle "wincent/Command-T"
Bundle "tomtom/tlib_vim"
Bundle "MarcWeber/vim-addon-mw-utils"
" Bundle "garbas/vim-snipmate"
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
Bundle "kana/vim-textobj-user"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "ervandew/supertab"
Bundle "jQuery"
Bundle "kchmck/vim-coffee-script"
Bundle "pangloss/vim-javascript"
Bundle "cakebaker/scss-syntax.vim"
Bundle "tpope/vim-haml"
Bundle "tpope/vim-markdown"
Bundle "greyblake/vim-preview"
Bundle "tpope/vim-bundler"
Bundle "Lokaltog/vim-powerline"
Bundle "corntrace/bufexplorer"
Bundle "vim-scripts/Railscasts-Theme-GUIand256color"
Bundle "skalnik/vim-vroom"
Bundle "vim-scripts/restore_view.vim"
Bundle "heartsentwined/vim-emblem"
Bundle "ngmy/vim-rubocop"
Bundle "vim-scripts/Align"
Bundle "vim-scripts/SQLUtilities"

Bundle "dsawardekar/ember.vim"
Bundle "dsawardekar/portkey"
Bundle "nono/vim-handlebars"

" Bundle "tpope/vim-dispatch"
" Bundle "SirVer/ultisnips"
" Bundle "alexlafroscia/vim-ember-cli"


filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim    
