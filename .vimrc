syntax on
set noerrorbells "no sound effects
set tabstop=4 softtabstop=4 "how many spaces a tab should use
set shiftwidth=4 
set expandtab
set wildmenu 
set smartindent
set rnu relativenumber " relative line number
set nowrap
set smartcase 
set noswapfile "no swap file (vim creates them by default) 
set nobackup "no backup file
set undodir=~/.vim/undodir
set undofile
set cursorline
set mouse=a
set incsearch
set formatoptions-=cro
set background=dark
call plug#begin("~/.vim-back/plugged")
" add plugins here
    Plug 'ps173/dadara' 
    Plug 'gruvbox-community/gruvbox'
    Plug 'liuchengxu/space-vim-dark'
    Plug 'dracula/vim', { 'as': 'dracula' }
"CSS properties and color selector
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'lilydjwg/colorizer'
" File explorer
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
" Intellisense and code completion with syntax highlighting
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-tsserver']
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdcommenter'
" Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
colorscheme space-vim-dark
" NERD TREE AND ICONS
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusline='NERDTree'
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" File explorer plugin
map <C-b> :NERDTreeToggle<CR>
" nerd commenter
noremap <leader>c :NERDCommenterComment<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" mapping escape to ctrl c
map <Esc><C-c> <CR>
inoremap jk <Esc>
inoremap kj <Esc>
" alternater way to save
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-Down>    :resize -2<CR>
nnoremap <silent> <C-Up>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>
