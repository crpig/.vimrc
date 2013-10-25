source ~/.vim/bundles.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
set background=light
"color desert
color blackdust

" highlight current line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn
au WinLeave * set nocursorline  " 离开窗口时取消高亮
au WinEnter * set cursorline    " 进入窗口是设置高亮
set cursorline                  " 高亮当前行

" search
set incsearch   " 即时显示输入的搜索字符，按ESC退回到原点
"set highlight 	" conflict with highlight current line

" 使用空格搜索当前单词，并高亮搜索结果 nohlsearch暂时取消高亮
set hlsearch
nmap <Space> /<C-R>=expand("<cword>")<CR><CR>

" 忽略大小写
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding 打开所有的折叠
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
" set nowrap                                                        " dont wrap lines 不拆行
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar 总是显示状态栏
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set shortmess=atI                                                 " 隐藏启动时的提示，缩写一些command
" set relativenumber                                                " 显示相对于当前行的行号


" for ctags
set tags=tags;                                                    " 自动向上寻找tags文件

" for file buffer
" shift+Tab 上一个Buffer文件 Tab:下一个Buffer文件
set hidden              " in order to switch between buffers with unsaved change 切换buffer时不显示提示信息
map <S-Tab> :bp<CR>
map <Tab> :bn<CR>

" Default Indentation
set autoindent      " o/O开启新行时，用当前行的缩进，ESC可以回到行首
set smartindent     " indent when  类似于autoindent,主要是给C用的
set tabstop=4       " tab width  tab代表的空格数
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" add by crpig
let mapleader = ","     " 设置leader为,

""""""""""""""""""""""""""""""""""""""
"
"       cscope.vim script
"
""""""""""""""""""""""""""""""""""""""
" in case your cscope execute is not in system path.
" let g:cscope_cmd = 'D:/tools/vim/cscope.exe'"
" s: Find this C symbol 查找C代码符号
map <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition 查找本定义
map <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function 查找本函数调用的函数
map <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function 产找调用本函数的函数
map <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string 查找本字符串
map <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern 查找本grep模式
map <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file 查找本文件
map <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
map <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
map <leader>l :call ToggleLocationList()<CR>



""""""""""""""""""""""""""""""""""""""
"
"       tagbar script
"
""""""""""""""""""""""""""""""""""""""
"let g:Tb_MaxSize = 2
"let g:Tb_TabWrap = 1

"hi Tb_Normal guifg=white ctermfg=white
"hi Tb_Changed guifg=green ctermfg=green
"hi Tb_VisibleNormal ctermbg=252 ctermfg=235
"hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white


""""""""""""""""""""""""""""""""""""""
"
"       vim-easymotion script
"
""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = '<Leader>'
let g:EasyMotion_mapping_f = '_f'   " 防止和cscope冲突
let g:EasyMotion_mapping_F = '_F'   " 防止和cscope冲突



""""""""""""""""""""""""""""""""""""""
"
"       Tagbar script
"
""""""""""""""""""""""""""""""""""""""
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1



""""""""""""""""""""""""""""""""""""""
"
"       NerdTree script
"
""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"



""""""""""""""""""""""""""""""""""""""
"
"       nerdcommenter script
"
""""""""""""""""""""""""""""""""""""""
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1



""""""""""""""""""""""""""""""""""""""
"
"       powerline script
"
""""""""""""""""""""""""""""""""""""""
" powerline
"let g:Powerline_symbols = 'fancy'



""""""""""""""""""""""""""""""""""""""
"
"       NeoComplcache script
"
""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'



""""""""""""""""""""""""""""""""""""""
"
"       SuperTab script
"
""""""""""""""""""""""""""""""""""""""
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2



""""""""""""""""""""""""""""""""""""""
"
"       CtrlP script
"
""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = ',,'      " 将CtrlP的快捷键设置为,,
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
nnoremap <Leader>. :CtrlPTag<CR>



""""""""""""""""""""""""""""""""""""""
"
"   Keybindings for plugin toggle
"   gundo a.vim tagbar nerdtree
"   vim-indent-guides ack.vim
"
""""""""""""""""""""""""""""""""""""""
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>                        " F2进入Paste模式，可以原格式粘贴数据
nmap <F3> :GundoToggle<cr>
nmap <F4> :A<CR>
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F9> :IndentGuidesToggle<cr>
nmap <D-/> :
nnoremap <leader>a :LAck 
nnoremap <leader>v V`]

" quick search for location-list window such as LAck & cscope
nmap <F7> :lprevious<CR>
nmap <F8> :lnext<CR>



""""""""""""""""""""""""""""""""""""""
"
"       vim-indent-guides script
"
""""""""""""""""""""""""""""""""""""""
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd      guibg=red   ctermbg=3
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven     guibg=green ctermbg=4






"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
if has("gui_running")
    color desert        " use desert in gvim
    set go=aAce         " remove toolbar
    "set guifont=Monaco:h13
    "set showtabline=2
    "set columns=140
    "set lines=40

    " For mac users (using the 'apple' key)
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif
