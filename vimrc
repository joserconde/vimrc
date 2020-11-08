set nocompatible               " disable vi compatibility mode
set history=1000               " increase history size
filetype indent plugin on      " Enable filetype
set undofile                   " Enable persistent history
set undodir=~/.vim/undodir     " Undodir
set autoindent                 " Enable autoindent
set encoding=utf-8             " Use UTF-8 encoding
set backspace=indent,eol,start " Enable all backspace options
set cursorline                 " Enable cursorline
set fillchars+=vert:\║         " Use a specific pipe character
set noshowmode                 " Hide -- INSERT --
set laststatus=1               " Show statusbar
set wildmenu                   " Enable visual wildmenu
set nowrap                     " Not wrap long lines
set number                     " Show line numbers
set relativenumber             " Show numbers as relative by default
set showmatch                  " Show matching parentheses and brackets

let mapleader=","

" colorscheme
if &t_Co > 2
	syntax on
	silent! colorscheme dim
	set background=dark

	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight CursorLine term=NONE cterm=NONE ctermbg=8 ctermfg=15
	highlight Directory ctermfg=12

  "set colorcolumn=80
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

" Shortcuts for switching the buffers
map <C-N> :bnext<CR>
map <C-P> :bprev<CR>
imap <C-N> <Esc>:bnext<CR>i
imap <C-P> <Esc>:bprev<CR>i

" Toggle relativenumber
nmap <F2> :set invrelativenumber<CR>
imap <F2> <ESC>:set invrelativenumber<CR>a

" Toggle cursorline
nmap <F3> :set invcursorline<CR>
imap <F3> <ESC>:set invcursorline<CR>a

" Toggle colorcolumn
nmap <F4> :call ColorColumn()<CR>
imap <F4> <ESC>:call ColorColumn()<CR>i

" Toggle nerdtree
map <F12> :NERDTreeToggle<CR>
imap <F12> <ESC>:NERDTreeToggle<CR>

" Show a colored column at 80 characters
function! ColorColumn()
  if &colorcolumn == ""
    set colorcolumn=80
  else
  	set colorcolumn=
  endif
endfunction

