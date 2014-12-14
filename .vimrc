let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"打开语法高亮
syntax enable
syntax on
set encoding=utf-8

"不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题
set nocompatible

" vim 会话操作 -- 使CTRL-Z 可以挂起vim  使用fg 可以回到之前挂起vim的>位置 Session options
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
set nowrap "自动折行

"高亮显示搜索结果
set hlsearch

" 搜索实时显示
set incsearch

"搜索时忽略大小写
set ignorecase

"关闭文件备份
set nobackup
set nowb

"取消swp文件缓冲
set noswapfile

"第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set shiftwidth=4

"让一个tab等于4个空格
set tabstop=4

" 使用4个空格来代替tab 简写 set sts=4
set softtabstop=4

" 将插入状态下的tab 更改为空格 简写 set et
set expandtab

map <C-e> :NERDTreeToggle<CR>
"map <F3> <C-w>w
"打开标签栏
"map <C-r> :TagbarToggle<CR>
map <C-i> :bN<CR>
map <C-o> :bn<CR>

"在状态栏显示正在输入的命令
set showcmd

"我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ %*%=\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l/%L,%c][%p%%]\ %{strftime(\"%Y/%m/%d\ -\ %H:%M\")}

"命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 显示行号
set nu

"开启光标行
set cursorline
hi cursorline guibg=#333333
"设置光标十字坐标，高亮当前列
"set cursorcolumn
"高亮当前列的背景颜色
"hi CursorColumn guibg=#333333


set nocompatible
filetype off  
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" original repos on github
Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
" Bundle 'mattn/emmet-vim'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'tomasr/molokai'
Bundle 'majutsushi/tagbar'
"Bundle "airblade/vim-gitgutter"
"Bundle "Yggdroot/indentLine"
Bundle 'jlanzarotta/bufexplorer'
Bundle 'vim-scripts/AutoComplPop'
"Set mapleader
let mapleader = ","
map <leader>il :IndentLinesToggle<CR>
"Bundle "tpope/vim-commentary"

"补全引号
Bundle "Raimondi/delimitMate"

"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
Bundle 'fholgado/minibufexpl.vim'

"状态栏菜单
set wildmenu
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powerline_colorscheme='solarized256'
let g:Powerline_symbols='compatible'
let g:airline_powerline_fonts=1
set encoding=utf-8



" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!

"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"设置Python注释字符
autocmd FileType python,shell set commentstring=#\ %s
autocmd FileType php,js set commentstring=//\ %s
autocmd FileType phtml set commentstring=<!-- %s -->
autocmd FileType mako set cms=##\ %s

let g:pydiction_location = '~/.vim/bundle/Pydiction'
let g:pydiction_menu_height = 20


"配色方案
"colo alan
colo alan

let Tlist_Inc_Winwidth = 1

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

filetype plugin on
" autocmd FileType python set omnifunc=pythoncomplete#Complete  
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3

"set paste
