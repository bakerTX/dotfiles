execute pathogen#infect() 
"
" NERDTREE
"
autocmd vimenter * NERDTree " NERDTree settings. Always start on and set toggle to c\
map <C-\> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1 " Start nerdtree on open EVEN IF no files were specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " If nerd tree is the last window open close out
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸' " Change those nasty default arrows in nerdtree
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1  " Pretty up nerdtree
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1  " Show hidden files in nerdtree
"
"" Airline
"
if !exists('g:airline_symbols') " Airline stuff!!!!!
let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_enable_syntastic = 1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_powerline_fonts=1

"
"" Stuff from D.A
"

syntax on
filetype plugin indent on
set nocompatible        " This may do nothing. It may do EVERYTHING
autocmd FileType javascript.jsx,javascript setlocal formatprg=prettier\ --stdin
set updatetime=250        " quicker update time for inline git
set backspace=indent,eol,start
set clipboard=unnamed        " Paste to/from global clipboard
set laststatus=2        " Always show status bar
" set noerrorbells        " Please no beeping
set noswapfile        " Do not write swap files
set nobackup        " No backup files
set nowrap        " Ugh -- don't line wrap
set number            " show line number
set numberwidth=4    " Width of the bar that displays your numbers
set ruler        " show ruler
set scrolloff=0        " don't scroll until you hit the top/bottom
set showmode        " always show what mode we're editing in
set undolevels=1000        " fail more often -- fail further away
set visualbell        " don't beep
set tabstop=2        " How many spaces does a tab represent
set softtabstop=2    " Lock down your tab length
set shiftwidth=2
set expandtab
set wildmenu        " Sweet popup menu generated smartly
set incsearch        " search as characters are entered
set hlsearch        " highlight matches            
autocmd vimenter * NERDTree
set scrolloff=7 " there is padding at the top and bottom of a file
nmap <leader>l :set list!<CR> " toggle invis characters with \l
set listchars=tab:▸\ ,eol:¬ " customize invis characters
