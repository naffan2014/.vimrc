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
autocmd vimenter * NERDTree
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
nnoremap f :NERDTreeToggle
""""""""""""""""""""""基础配置""""""""""""""""""
set nocompatible "避免一致性模式
set encoding=utf-8 "编码
set nu "显示行号
set ruler "在编辑过程中，在右下角显示光标位置的状态行 
set hls "寻找匹配是高亮度显示的
set incsearch "增量匹配查找模式
"set spell spellang=en_us "将拼写检查设置为英文
if has('mouse')
  set mouse=a "开启鼠标功能
endif


syntax on "语法高亮
filetype plugin indent on "检测文件类型

""""""""""""""""""""""配色方案""""""""""""""""""
colorscheme slate"配色方案:murphy
set background=light

""""""""""""""""""""""键位映射配置""""""""""""""
inoremap jk <ESC> "将esc映射到jk同时按
let mapleader = "\<Space>" "将<leader>=\映射到空格
nnoremap <leader>s :set spell! "切换拼写检查
nnoremap <leader>f 1z= "修正拼写检查
