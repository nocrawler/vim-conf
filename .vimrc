" set formatoptions-=cqn
set formatoptions-=cro
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'google.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" autocmd FileType cpp vnoremap <buffer>  <c-f> :call GoogleCppIndent()<cr>
" map <c-f> :pyf <path-to-this-file>/clang-format.py<cr>
" imap <C-K> <c-o>:pyf <path-to-this-file>/clang-format.py<cr>
" autocmd BufWritePre,FileWritePre *.cpp :call astyle --style=google %<cr>
" autocmd VimLeave *.cpp execute '!astyle --style=google' shellescape(expand('%'), 1)
autocmd VimLeave *.cpp execute '!astyle --style=google --pad-oper --pad-first-paren-out --unpad-paren' shellescape(expand('%'), 1)
" map <c-f> :ks <bar> :%!astyle --style=google --pad-oper --pad-first-paren-out --unpad-paren<cr> <bar> :'s<cr>
" map <c-f> :ks <bar> :%!astyle --style=google --pad-oper --pad-first-paren-out --unpad-paren<cr>
map <c-f> ms <bar> :%!astyle --style=google --pad-oper --pad-first-paren-out --unpad-paren<cr> <bar> `s
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" map <c-f> :ms <bar> :%!astyle --style=google --pad-oper --pad-first-paren-out --unpad-paren<cr> <bar> :'s<cr>
" map <c-f> msHmtgg/Last :'tzt`s
" autocmd BufWritePost *.cpp execute '!astyle' shellescape(expand('%'), 1)
" autocmd FileWritePre *.cpp|*.h astyle  --style=google
