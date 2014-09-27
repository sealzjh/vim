let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:Powerline_symbols = 'fancy'

syntax enable

"打开语法高亮
syntax on
set encoding=utf-8

"不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题 
set nocompatible

" vim 会话操作 -- 使CTRL-Z 可以挂起vim  使用fg 可以回到之前挂起vim的位置 Session options
set sessionoptions-=curdir
set sessionoptions+=sesdir

"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set noerrorbells
set vb t_vb=

"依据上面的对起格式，智能的选择对起方式，对于类似C语言编
"set smartindent

"设置自动换行字符长度
set textwidth=180

"设置折行
"set nowrap "不自动折行
set nowrap "自动折行 

" 关掉智能补全时的预览窗口
set completeopt=longest,menu

let g:vimrc_loaded = 1

"高亮显示搜索结果
set hlsearch

" 搜索实时显示
set incsearch

"关闭文件备份
set nobackup
set nowb

"取消swp文件缓冲
set noswapfile

"左右光标移动到头时可以自动下移
set whichwrap=b,s,<,>,[,]


"--------------------------------状态栏设置--------------------------------
" 开启状态栏菜单
set wildmenu

"总是显示状态栏status line
set laststatus=2

function! CurDir()
	let curdir = substitute(getcwd(), $HOME, "~", "g")
	return curdir
endfunction

"状态栏格式
set statusline=[%n]\ %m%r%h\ \|\ \ \ %{CurDir()}/%f\ %=\|\ %l,%c\ %p%%\ \|\ ascii=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\  


"---------------------------------
"搜索时忽略大小写
set ignorecase


"--------------------------------Tab按钮设置-------------------------------
"第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set shiftwidth=4

"让一个tab等于4个空格 
set tabstop=4  

" 使用4个空格来代替tab 简写 set sts=4
set softtabstop=4 

" 将插入状态下的tab 更改为空格 简写 set et
set expandtab

" 设置tags
set tags=tags;
set autochdir


"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"Bundle 'gmarik/vundle'

"Bundle 'scrooloose/nerdtree'
"Bundle 'kien/ctrlp.vim'
"Bundle 'mattn/emmet-vim'


"Bundle 'altercation/vim-colors-solarized'
"Bundle 'tomasr/molokai'
"colorscheme molokai

"Bundle 'majutsushi/tagbar'
"nnoremap <F9> :TagbarToggle<CR>


"Bundle "airblade/vim-gitgutter"
"规格线
"Bundle "Yggdroot/indentLine"
"Set mapleader
"let mapleader = ","
"map <leader>il :IndentLinesToggle<CR>

"Bundle "tpope/vim-commentary"

" winmanager setting
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"nmap <silent> <leader>1 :FirstExplorerWindow<cr>
"nmap <silent> <leader>2 :BottomExplorerWindow<cr>
"nmap <silent> <leader>wm :WMToggle<cr>
" autocmd BufWinEnter \[Buf\ List\] setl nonumber

map <F2> :NERDTreeToggle<CR>
map <F3> <C-w>w

" 移动
map <F9> :bN<CR>
map <F10> :bn<CR>

" 查看制表符
"set list

" 显示光标位置
set showcmd

set  wrap

:map <C-j> <C-w>j<C-w>_

" :vertical split ~/

" 显示行号
set nu

"开启光标行
set cursorline

"开启光标列
"set cursorcolumn

"配色方案
colo alan


