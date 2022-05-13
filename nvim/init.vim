"Extensions

call plug#begin('~/.config/nvim/plugged')

"Plug 'altercation/vim-colors-solarized'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
"Plug 'arcticicestudio/nord-vim'
"Plug 'joshdick/onedark.vim'
"Plug 'haishanh/night-owl.vim'
Plug 'dracula/vim'
Plug 'fladson/vim-kitty'
call plug#end()

"Settings

set nu rnu
set incsearch
"set nohlsearch 
syntax enable
let g:incsearch#auto_hlsearch = 1
"let g:solarized_termcolors=256
"let g:base16colorspace=256
"set background=dark
colorscheme dracula
set termguicolors

"Mappings
let mapleader = " "
map <C-o> :NERDTreeToggle<CR>
nnoremap <Leader>/ :set hls!<CR>
