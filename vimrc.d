" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

set nocompatible
set wildmenu
set ruler
set noswapfile
set hlsearch
set cursorline
set laststatus=2
set encoding=utf-8
set t_Co=16
set fillchars+=stl:\ ,stlnc:\
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules
set rtp+=~/.config/powerline/bindings/vim
set background=dark

" json synatx for vim
autocmd BufNewFile,BufRead *.json set ft=javascript

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
colorscheme solarized

syntax on
let g:Powerline_symbols = 'unicode'
noremap <C-e> :NERDTreeToggle<CR>
noremap <F5> :%s/\s\+$//gc
noremap <F6> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nnoremap <C-i> :IndentGuidesToggle<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40
let NERDTreeIgnore = ['.git$','node_modules','.DS_Store', '\.pyc$']

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|docs\|git'
