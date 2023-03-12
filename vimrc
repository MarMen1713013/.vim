syntax on
filetype on

" set transparent background
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu 				" for line numbers
set wrap
set linebreak
set smartcase			" case sensitive search
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"set cursorline
"set cursorcolumn
set spell "spelllang=en_uk
" remember to install clang, libclang-dev and universal c-tags

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    
    " compile with --clangd-completer
    " use set(
    " CMAKE_EXPORT_COMPILE_COMMANDS
    " ON ) in the CMakeLists.txt to
    " make the references available to Ycm
    Plug 'ycm-core/YouCompleteMe'
    Plug 'preservim/nerdtree'
    Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal
let g:gruvbox_transparent_bg = 1
let g:gruvbox_guisp_fallback = "bg" "necessary for spellcheck with gruvbox
set background=dark

nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>b i <CR> <Esc>

" remap esc key in insert and visual mode
vnoremap jf <Esc>
vnoremap fj <Esc>
inoremap jf <Esc>
inoremap fj <Esc>

vnoremap JF <Esc>
vnoremap FJ <Esc>
inoremap JF <Esc>
inoremap FJ <Esc>

" utility mappings
nnoremap <C-j> i<CR><Esc>
nnoremap <silent> <leader><leader>+ :resize +5<CR>
nnoremap <silent> <leader><leader>- :resize -5<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader><leader>t :terminal<CR>
nnoremap <leader>n :set invnumber<CR>
nnoremap <leader>w :set invwrap<CR>
nnoremap <F5> :call CurtineIncSw()<CR>  " switch cpp -> hpp and vieceversa
nnoremap <F8> :TagbarToggle<CR>

" NERDTree specific
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
