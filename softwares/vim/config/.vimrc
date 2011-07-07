fun! MySys()
   return "linux"
endfun
set runtimepath=~/.vim_runtime,~/.vim_runtime/after,\$VIMRUNTIME
source ~/.vim_runtime/vimrc
"helptags ~/.vim_runtime/doc
set guifont=Lucida\ Sans\ Typewriter\ Std\ 12

if has("gui_running")
  set guioptions-=T
  set t_Co=256
  set background=light
  colorscheme tutticolori
  set nonu
else
  colorscheme colorful
  set nonu
endif

set number
set nocompatible
syntax on
set guifont=Lucida\ Sans\ Typewriter\ 16
set number
set noeb
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set history=1000
set nobackup
set noswapfile
set ignorecase
set smartcase
set hlsearch
set incsearch
set gdefault
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set helplang=cn
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set laststatus=2
set ruler

filetype on
filetype plugin on
filetype indent on
set viminfo+=!
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set shortmess=atl
set showmatch
set matchtime=5
set scrolloff=3

imap ;; <Esc>
imap ;d <ESC>dd
vmap <C-c> "+y
nmap <C-c> "+yaw
nmap <C-v> h"+p
imap <C-v> <ESC><C-v>a

"<Ctrl-s> for saving
map <C-s> :write!<CR>
imap <C-s> <ESC>:write<CR>a

"<Ctrl-w> for closing tabs
nmap <C-w> :q<CR>

" key-mappings for comment line in normal mode
nmap  <silent> cm :call CommentLine()<CR>
" key-mappings for range comment lines in visual <Shift-V> mode
vmap <silent> cm :call RangeCommentLine()<CR>

" key-mappings for un-comment line in normal mode
nmap  <silent> cu :call UnCommentLine()<CR>
" key-mappings for range un-comment lines in visual <Shift-V> mode
vmap <silent> cu :call RangeUnCommentLine()<CR>

au FileType javascript inoremap <buffer> nn function PH() {<CR>}<ESC>k$FP2xi
au FileType ruby inoremap <buffer> def def PH<CR>end<ESC>k$FPC
au FileType ruby nmap <buffer> <leader>r :!ruby "%"<CR>
au FileType ruby set tabstop=2
au FileType ruby set softtabstop=2
au FileType ruby set shiftwidth=2

" key-mappings for <Alt-[hjkl]> moving cursor in insert mode
imap <M-l> <RIGHT>
imap <M-k> <UP>
imap <M-j> <DOWN>
imap <M-h> <LEFT>

nmap <C-d> yyp

unmap <LEFT>
unmap <RIGHT>

nmap <C-z> :shell<CR>
nmap <leader>so :so %<CR>

let blog_name='FlashLight'
let blogit_username='qhwa' 
let blogit_password='830822blog' 
let blogit_url='https://q.pnq.cc/xmlrpc.php'

" Plugin: Quickfonts
nmap <leader>= :QuickFontBigger<CR>
nmap <leader>- :QuickFontSmaller<CR>

" Plugin: NERDTree
nmap <leader>` :NERDTreeToggle<CR>

" Plugin: Rails
let g:rails_statusline=0
