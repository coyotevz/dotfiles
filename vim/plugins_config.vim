"" Plugins configuration

"" VundleVim/Vundle.vim
" vundle: use `git` instead `https` to fetch repos
let g:vundle_defult_git_proto = 'git'

"" SirVer/ultisnips
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]

"" mattn/emmet-vim
let g:user_zen_expandabbr_key = '<C-E>'

" supertab
let g:SuperTabDefaultCompletionType = 'context'

"" vim-scripts/Syntastic
let g:syntastic_check_on_wq=0
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript'] }
nmap <F2> :SyntasticReset<cr>
nmap <F3> :SyntasticCheck<cr>
nmap <F5> :SyntasticToggleMode<cr>

" enable checkers
let g:syntastic_scss_checkers = ["scss_lint"]  "Install ruby-scss_lint
let g:syntastic_javascript_checkers = ["eslint"] "Install nodejs-jscs

"" nathanaelkane/vim-indent-guides
nmap <F4> :IndentGuidesToggle<cr>
let g:EasyMotion_leader_key = '<Leader>'

"" scrooloose/nerdtree
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.pyo$', '\.swp$']
nmap <F6> :NERDTreeToggle<cr>
map <c-k> :NERDTreeToggle<cr>
map <c-i> :NERDTreeFind<cr>


"" bling/vim-airline
let g:airline_theme = "powerlineish"

" next line + guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9 do the trick
let g:airline_powerline_fonts=0
let g:airline_detect_modified=1

"let g:airline_extensions = ['branch', 'tabline', 'whitespace', 'syntastic']
let g:airline#extensions#disable_rtp_load = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_symbols.whitespace = 'Ξ'
endif

"" justincampbell/vim-eighties
let g:eighties_enabled = 0  " disabled by the moment


"" jmcantrell/vim-virtualenv
let g:virtualenv_auto_activate = 1


"" othree/html5
let g:html5_rdfa_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

"" pangloss/vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"


"" othree/xml
let xml_tag_completion_map = '<C-l>'
let xml_jump_string = "`"
let xml_warn_on_duplicate_mapping = 1

" javascript-libraries-syntax
let g:used_javascript_libs = 'jquery,underscore,backbone,requirejs'
