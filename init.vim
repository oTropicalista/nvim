" ARQUIVO DE CONFIGURAÇÃO VIMRC
" ===========================
" Criado por: oTropicalista
" Data de criação: 17/06/2020

" Tema
" colorscheme dracula
let g:airline_theme='dark'

syntax on
syntax enable
filetype plugin indent on

" Sets
set title
set number
set tabstop=4
set shiftwidth=4
set mouse=a
set encoding=UTF-8
set background=dark

"nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''

" Vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
" Plug 'valloric/youcompleteme'
Plug 'ryanoasis/vim-devicons'
" Plug 'roxma/nvim-completion-manager'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'dracula/vim'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'rust-lang/rust.vim'

call plug#end()

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Atalhos personalizados
map <C-b> :NERDTreeToggle<CR>
map <A-t> :TagbarToggle<CR>

let g:jedi#use_splits_not_buffers = "right"



" Navegação entre abas
function! MyNext()
    if exists( '*tabpagenr' ) && tabpagenr('$') != 1
        " Tab support && tabs open
        normal gt
    else
        " No tab support, or no tabs open
        execute ":bnext"
    endif
endfunction
function! MyPrev()
    if exists( '*tabpagenr' ) && tabpagenr('$') != '1'
        " Tab support && tabs open
        normal gT
    else
        " No tab support, or no tabs open
        execute ":bprev"
    endif
endfunction

nnoremap L <ESC>:call MyNext()<CR>
nnoremap H <ESC>:call MyPrev()<CR>
