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
"" CODE COMPLETION
"" ====================================

Bundle 'garbas/vim-snipmate'
" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'

Bundle 'mattn/zencoding-vim'
Bundle 'ervandew/supertab'

"" ==================================
"" FAST EDITING
"" ==================================

"" ==================================
"" IDE FEATURES
"" ==================================

"" ==================================
"" OTHER UTILITIES
"" ==================================

"" ==================================
"" PYTHON
"" ==================================

" At the end install plugins the first time
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo
    :BundleInstall
endif

" required
filetype plugin on
filetype indent on
