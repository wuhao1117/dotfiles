" Pathogen
filetype off
call pathogen#incubate()
call pathogen#helptags()
filetype plugin indent on

syntax on
colorscheme solarized

set clipboard+=unnamed
set incsearch
set hlsearch
set nocompatible
set wildmenu
set t_Co=16
set ruler
set noswapfile
set cursorline
set backspace=2
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set background=dark

set rtp+=~/.config/powerline/bindings/vim " runtime path
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc " files to ignore
set fillchars+=stl:\ ,stlnc:\ " set blank statusline separator

noremap <C-e> :NERDTreeToggle<CR>
noremap <F5> :%s/\s\+$//g
noremap <F6> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nnoremap <C-i> :IndentGuidesToggle<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>m :noh<CR>
nnoremap <Leader>p :set paste<CR>
imap jj <Esc>

" json synatx for vim
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufRead,BufNewFile *.md setlocal spell

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'

" Powerline
let g:Powerline_symbols = 'unicode'

" NERDTree
autocmd vimenter * NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeIgnore = ['.git$','.DS_Store', '\.pyc$']

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|public\|git\||build'
set runtimepath^=~/.vim/bundle/ctrlp.vim
