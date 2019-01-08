" vim-pathogen  https://github.com/tpope/vim-pathogen
" apt-get install vim-pathogen
execute pathogen#infect()

set t_Co=256
color afterglow
"color benokai

set mouse=a
set number
set linebreak nolist
set guioptions=aA


" copy
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>

" set tabs to be 4 spaces wide
set tabstop=4
set shiftwidth=4

" use 4 spaces when hitting tab key
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

if has("patch-7.4.710")
    set listchars=eol:¬,tab:»\ ,trail:~,extends:>,precedes:<,space:‧
else
    set listchars=eol:¬,tab:»\ ,trail:~,extends:>,precedes:<
endif
"set list

" yank to system clipboard by default (make sure enabled: vim --version | grep clipboard. install vim-gtk or vim-gnome if not)
set clipboard=unnamedplus


" cursor movement along wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" indent/unindent visually selected lines with TAB/SHIFT+TAB
vmap <TAB> >gv
vmap <S-TAB> <gv

" strip trailing whitespace upon save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" indent guide: git clone  git@github.com:Yggdroot/indentLine.git ~/.vim/bundle/indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '⎸'
autocmd FileType markdown let g:indentLine_conceallevel = 0

" nerdtree settings  https://github.com/scrooloose/nerdtree
" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
" for git flags support: git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.blg$', '\.aux$', '\.bbl$']


" do not render markdown/latex formatting
if has ( 'conceal' )
  set conceallevel=0
  let g:tex_conceal = ""
endif

" word and character counts in status bar
let g:word_count="<unknown>"
function WordCount()
	return g:word_count
endfunction
function UpdateWordCount()
	let lnum = 1
	let n = 0
	while lnum <= line('$')
		let n = n + len(split(getline(lnum)))
		let lnum = lnum + 1
	endwhile
	let g:word_count = n
endfunction
" Update the count when cursor is idle in command or insert mode.
" Update when idle for 1000 msec (default is 4000 msec).
set updatetime=1000
augroup WordCounter
	au! CursorHold,CursorHoldI * call UpdateWordCount()
augroup END
" Set statusline, shown here a piece at a time
" highlight User1 ctermbg=green guibg=green ctermfg=black guifg=black
" set statusline=%1*			" Switch to User1 color highlight
set statusline+=%<%F			" file name, cut if needed at start
set statusline+=%M			" modified flag
set statusline+=%y			" file type
set statusline+=%=			" separator from left to right justified
set statusline+=\ %{WordCount()}\ words,
set statusline+=\ %l/%L\ lines,\ %P	" percentage through the file


" vim-flake8 configuration
" https://github.com/nvie/vim-flake8
autocmd BufWritePost *.py call Flake8()

let g:flake8_show_in_gutter=1
