" vim-pathogen  https://github.com/tpope/vim-pathogen
" apt-get install vim-pathogen
execute pathogen#infect()

set t_Co=256
color afterglow
"color benokai

set mouse=a

" nerdtree settings  https://github.com/scrooloose/nerdtree
" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
" for git flags support: git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
