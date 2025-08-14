"Atuo install vim-plug if not alredy installed

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
