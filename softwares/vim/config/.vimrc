fun! MySys()
   return "linux"
endfun
set runtimepath=~/.vim_runtime,~/.vim_runtime/after,\$VIMRUNTIME
source ~/.vim_runtime/vimrc
"helptags ~/.vim_runtime/doc
set guifont=Lucida\ Sans\ Typewriter\ 12
if has("gui_running")
  set guioptions-=T
  set t_Co=256
  set background=light
  colorscheme tutticolori
else
  colorscheme colorful
endif

set nocompatible
set number
set noeb
set confirm
set autoindent cindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
set history=1000
set nobackup noswapfile
set ignorecase smartcase hlsearch incsearch
set gdefault
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8 helplang=cn
set ruler

set viminfo+=!
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set shortmess=atl
set showmatch
set matchtime=5
set scrolloff=3

syntax on
filetype on
filetype plugin on
filetype indent on

imap jk <Esc>
inoremap <leader>d <ESC>dd
vnoremap <C-c> "+y
nnoremap <C-c> "+yaw
nnoremap <C-v> h"+p
inoremap <C-v> <ESC><C-v>a

"<Ctrl-s> for saving
map <silent><C-s> :update<CR>
inoremap <C-s> <ESC>:update<CR>a

" key-mappings for comment line in normal mode
nnoremap  <silent> cm :call CommentLine()<CR>
" key-mappings for range comment lines in visual <Shift-V> mode
vnoremap <silent> cm :call RangeCommentLine()<CR>

" key-mappings for un-comment line in normal mode
nnoremap  <silent> cu :call UnCommentLine()<CR>
" key-mappings for range un-comment lines in visual <Shift-V> mode
vnoremap <silent> cu :call RangeUnCommentLine()<CR>

au FileType ruby nnoremap <buffer> <leader>r :!ruby "%"<CR>
au FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
au FileType vim nnoremap <buffer> <leader>r :so %<CR>
au FileType sh  nnoremap <buffer> <leader>r :!sh "%"<CR>

" key-mappings for <Alt-[hjkl]> moving cursor in insert mode
inoremap <M-l> <RIGHT>
inoremap <M-k> <UP>
inoremap <M-j> <DOWN>
inoremap <M-h> <LEFT>

inoremap `` <ESC>
inoremap <C-l> <ESC>A
inoremap <C-h> <ESC>I
inoremap <silent><C-o> <ESC>O

nnoremap <C-d> yyp
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" <Alt + [1-5]> goto tab in position i
nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt

unmap <LEFT>
unmap <RIGHT>

nnoremap <C-z> :shell<CR>

" Plugin: Quickfonts
nnoremap <leader>= :QuickFontBigger<CR>
nnoremap <leader>- :QuickFontSmaller<CR>

vnoremap " <ESC>i"<ESC>gvo<ESC>i"<ESC>
vnoremap ' <ESC>i'<ESC>gvo<ESC>i'<ESC>

" Plugin: NERDTree
noremap <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" Plugin: Rails
let g:rails_statusline=0

" Plugin: NERDTree-Ack
let g:path_to_search_app = "/usr/bin/ack-grep" 

" Plugin: vimim
"let g:vimim_cloud = 'google,sogou,baidu,QQ'
let g:vimim_cloud = 'sogou'

iabbrev func function
