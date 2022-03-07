syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

set nu

colorscheme murphy         " Change a colorscheme.

set directory=$HOME/.vim/swap//

" Set up persistent undo across all files.
set undofile
if !isdirectory($HOME. "/.vim/undodir")
    call mkdir($HOME . "/.vim/undodir", "p")
endif
set undodir=$HOME/.vim/undodir

packloadall                 " Load all plugins.
silent! helptags ALL        " Load help files for all plugins.

" Fast split navigation with <Ctrl> + hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window.

" Fold configuration
set foldmethod=indent
autocmd BufRead * normal zR

set wildmenu                    " Enable enhanced tab autocomplete.
" set wildmode=list:longest,full  " Complete till longest string, then open the wildmenu.

" let NERDTreeShowBookmarks = 1   " Display bookmarks on startup. 

" autocmd VimEnter * NERDTree     " Enable NERDTree on Vim startup.  

" Autoclose NERDTree if it's the only open window left.
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
" \ b:NERDTree.isTabTree()) | q | endif

" Mouse
set mouse=a

" let NERDTreeHijackNetrw=0

" Ctrl + b e Ctrl + f já são usados para navegar nos arquivos, e é bem util.
" nnoremap <C-b> :CtrlPBuffer<cr>     " Map CtrlP buffer mode to Ctrl + B.

set rnu         " Relative number
set hlsearch    " Highlights search results
set incsearch   " Move to the search first match as soon as type

" Testing a map for EasyMotion
nmap <c-m> H<Leader><Leader>w

set clipboard=unnamed,unnamedplus " Copy into system (*, +) register.

