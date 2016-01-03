set nocompatible    " be iMproved
filetype off        " required!

" setting up vundle - the vmi plugin bundler
let iCanHazVundle = 1
let vundle_readme = expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing vundle ..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone git://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle = 0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage Vundle
Bundle 'gmarik/vundle'
" Brief help
" :BundleList        - list configured bundles
" :BundleInstall(!)  - install(update) bundles
" :BundleUpdate          - update installed bundles
" :BundleSearch(!) foo   - search(or refresh cache first) for foo
" :BundleClean(!)        - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.

"" ====================================
"" CODE COMPLETION / CHECKERS
"" ====================================

Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'mattn/emmet-vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/Syntastic'

"" ==================================
"" FAST EDITING
"" ==================================

Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'

"" ==================================
"" IDE FEATURES
"" ==================================

Bundle 'scrooloose/nerdtree'

"" ==================================
"" OTHER UTILITIES
"" ==================================

Bundle 'Lokaltog/vim-powerline'
"Bundle 'bling/vim-airline'
Bundle 'justincampbell/vim-eighties'

"" ==================================
"" PYTHON
"" ==================================

Bundle 'jmcantrell/vim-virtualenv'

"" ==================================
"" OTHER LANGUAGES
"" ==================================

Bundle 'othree/html5.vim'
Bundle 'coyotevz/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/xml.vim'
"Bundle 'Glench/Vim-Jinja2-Syntax'
"Bundle 'lepture/vim-jinja'
Bundle 'mitsuhiko/vim-jinja'
Bundle 'vim-scripts/gtk-vim-syntax'
Bundle 'vim-scripts/webkitgtk'

" At the end install plugins the first time
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo
    :BundleInstall
endif

" required
filetype plugin on
filetype indent on
