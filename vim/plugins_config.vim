"" Plugins configuration

" vundle: use `git` instead `https` to fetch repos
let g:vundle_defult_git_proto = 'git'

"" ====================================
"" CODE COMPLETION
"" ====================================

" ultisnips config
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetsDir = "~/.vim_ultisnips"

" zen coding
let g:user_zen_expandabbr_key = '<C-e>'

" supertab
let g:SuperTabDefaultCompletionType = 'context'

"" ==================================
"" FAST EDITING
"" ==================================

" indent guides
nmap <F4> :IndentGuidesToggle<cr>
let g:EasyMotion_leader_key = '<Leader>'

"" ==================================
"" IDE FEATURES
"" ==================================

" nerdtree
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.pyo$', '\.swp$']
nmap <F6> :NERDTreeToggle<cr>

"" ==================================
"" OTHER UTILITIES
"" ==================================

" powerline
if has("gui_running")
    let g:Powerline_symbols = "fancy"
endif

"" ==================================
"" PYTHON
"" ==================================

"" ==================================
"" OTHER LANGUAGES
"" ==================================

" html5
let g:html5_rdfa_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

" javascript-vim html indentation
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" javascript-libraries-syntax
let g:used_javascript_libs = 'jquery,underscore,backbone,requirejs'

" xml-plugin
let xml_tag_completion_map = '<C-l>'
let xml_jump_string = "`"
