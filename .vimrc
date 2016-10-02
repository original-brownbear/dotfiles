set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader=","

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
Plugin 'spf13/vim-colors'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-markdown'
Plugin 'xolox/vim-misc'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'osyo-manga/vim-over'
Plugin 'bling/vim-bufferline'
Plugin 'powerline/powerline'
Plugin 'ervandew/screen'
call vundle#end()   

filetype on
filetype indent on
syntax on
set noexpandtab
set tabstop=4
set shiftwidth=4
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>

:inoremap jk <esc> 
setl number
map <C-e> :NERDTreeToggle<CR>
:inoremap <c-s> <Esc>:Update<CR>

let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

colorscheme default

:nnoremap <Leader><Right> :bnext<CR>
:nnoremap <Leader><Left> :bprevious<CR>

" Screen settings
let g:ScreenImpl = 'Tmux'
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellInitialFocus = 'shell'
let g:ScreenShellQuitOnVimExit = 0
map <F5> :ScreenShellVertical<CR>
command -nargs=? -complete=shellcmd W  :w | :call ScreenShellSend("load '".@%."';")
map <Leader>r :w<CR> :call ScreenShellSend("rspec ".@% . ':' . line('.'))<CR>
map <Leader>e :w<CR> :call ScreenShellSend("cucumber --format=pretty ".@% . ':' . line('.'))<CR>
map <Leader>w :w<CR> :call ScreenShellSend("break ".@% . ':' . line('.'))<CR>
map <Leader>m :w<CR> :call ScreenShellSend("\e[A")<CR>

map <C-d> Vyp
:inoremap <C-d> <esc>Vypi

set backspace=indent,eol,start
