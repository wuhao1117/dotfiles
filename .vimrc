" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

syntax on
colorscheme solarized

set incsearch    "find the next match as we type the search
set hlsearch     "highlight searches by default
set nocompatible
set wildmenu     " enhanced command-line completion
set t_Co=16      " number of colors
set ruler        " show line + column number of the cursor position
set noswapfile
set cursorline   " highlight cursor line
set backspace=2  " backspace over everything
set laststatus=2 " always show last status line
set tabstop=4    " number of spaces that equal <Tab>
set shiftwidth=4 " how many columns to shift on << or >>
set softtabstop=4
set expandtab

set encoding=utf-8
set background=dark 

set rtp+=~/.config/powerline/bindings/vim " runtime path
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.hi " files to ignore
set fillchars+=stl:\ ,stlnc:\ " set blank statusline separator

noremap <C-e> :NERDTreeToggle<CR>
noremap <F5> :%s/\s\+$//gc
noremap <F6> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nnoremap <C-i> :IndentGuidesToggle<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <space>m :noh<CR>
nnoremap <space>h :set nohlsearch<CR>
nnoremap <space>p :set paste<CR>

" json synatx for vim
autocmd BufNewFile,BufRead *.json set ft=javascript

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

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
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|public\|git\|build'
set runtimepath^=~/.vim/bundle/ctrlp.vim
