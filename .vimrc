""""""""""""""""""""""""""""""""""""""""""""""""
"	author 张一帆			       "
"	date   2016/8/8			       "
"	name   vimrc个性化配置		       "
""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""插件初始化"""""""""""""""""
"pathogen初始化
execute pathogen#infect()
"""""""""""""NERD_TREE 配置""""""""""""" 
"How can I open a NERDTree automatically when vim starts up?
"autocmd vimenter * NERDTree
"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31

""""""""""""""""""""""基础配置""""""""""""""""""
set nocompatible "避免一致性模式
set shell=/bin/zsh "shell换成oh-my-zsh
set guifont=Courier\ 14
set modelines=0
"下面的4歌参数参看:
"http://blog.163.com/allan_36983689/blog/static/316982402010118414355/
set tabstop=4 "tab为4个空格
set shiftwidth=4 "自动缩进空格数量
set softtabstop=4 "弥补tabstop和shiftwidth不一样时的空格数
set expandtab "自动将tab转变为空格
set scrolloff=3 "光标移动到buffer的顶部和底部时保持3行距离
"设置缩进
set autoindent 
set cindent
set showmode "显示当前操作模式
set showcmd "显示输入的质量
set hidden
"在用<ESC>:的时候通过tab可以进行垂直联想枚举，vim-sensible帮我做了，所以在这里
"我就不开开了
"set wildmenu
"set wildmode=list:longest
"set novb "错误的时候不出bb的声音，不影响人家睡觉:D
set ttyfast "当文件特别大时移动光标会很慢，开启会快很多
set backspace=indent,eol,start
set relativenumber
set noundofile "不创建撤销文件
set nobackup "不创建备份文件
set noswapfile "不创建临时交换文件
set nowritebackup "编辑时不需要本分文件
set ignorecase "搜索时不区分大小写
set smartcase
set gdefault
set showmatch
set foldenable "允许折叠
set foldmethod=manual "手动折叠
set hlsearch
set wrap
set linebreak "行位保证整个单词不被断开
set nolist
set formatoptions=qrn1
set nu "显示行号
set ruler "在编辑过程中，在右下角显示光标位置的状态行 
set hls "寻找匹配是高亮度显示的 
set incsearch "增量匹配查找模式
set colorcolumn=80
if version >= 603
    set helplang=cn "显示中文帮助
    set encoding=utf-8 "编码
endif
"set spell spellang=en_us "将拼写检查设置为英文
if has('mouse')
    set mouse=a "开启鼠标全部功能
endif


filetype plugin indent on "检测文件类型
au FocusLost * :wa "vim失去焦点后保存.up:只保存被修改的文件 silent! up：不提示
""""""""""""""""""""""配色方案""""""""""""""""""
syntax on"语法高亮
let g:solarized_termcolors=256
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized "配色方案:murphy





""""""""""""""""""""""键位映射配置""""""""""""""
let mapleader = "\<Space>" "将<leader>=\映射到空格
nnoremap <leader>f :NERDTreeToggle<CR>
inoremap jk <ESC> "将esc映射到jk同时按
nnoremap <leader>s :set spell! "切换拼写检查
"nnoremap <leader>f 1z= "修正拼写检查
"箭头是不被vim所提倡的
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"方便切换vi中的窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"方便切换vi中的tab页
nnoremap <left> :tabprevious<CR>
nnoremap <right> :tabnext<CR>
