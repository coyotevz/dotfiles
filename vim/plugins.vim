set nocompatible        " be iMproved
filetype off            " required!

" setting up vundle - the vim plugin bundler
let iCanHazVundle = 1
let vundle_readme = expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing vundle ..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone git://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
    let iCanHazVundle = 0
endif

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let vundle manage itself
Plugin 'VundleVim/Vundle.vim'


"" Code completion / checkers
"" ~~~~~~~~~~~~~~~~~~~~~~~~~~

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/Syntastic'


"" Fast editing
"" ~~~~~~~~~~~~

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'


"" Ide Features
"" ~~~~~~~~~~~~

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'


"" Fancy
"" ~~~~~

Plugin 'bling/vim-airline'
Plugin 'justincampbell/vim-eighties'


"" Python
"" ~~~~~~

Plugin 'jmcantrell/vim-virtualenv'
Plugin 'klen/python-mode'


"" Other Languages
"" ~~~~~~~~~~~~~~~

Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/xml.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'vim-scripts/gtk-vim-syntax'
Plugin 'vim-scripts/webkitgtk'


call vundle#end()

" required
filetype plugin indent on
