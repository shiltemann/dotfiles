" vim-pathogen  https://github.com/tpope/vim-pathogen
execute pathogen#infect()

set t_Co=256
color afterglow
"color benokai

" nerdtree settings    https://github.com/scrooloose/nerdtree
"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
