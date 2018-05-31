" syntax highlighting
syntax enable

set nu
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set bg=dark
set encoding=utf-8

" spell check
"set spell
"set spelllang=en

" spacing
"set textwidth=99
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" last line
set showmode
set showcmd
set laststatus=2
set ruler
set scrolloff=5

" key mappings in visual mode
noremap j h
noremap k j
noremap l k
noremap ; l
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" key mappings in insert mode
inoremap kl <esc>
inoremap <esc> <nop>

" toggle paste before and after pasting
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction
