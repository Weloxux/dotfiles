" ------------------------------------------ "
" .vimrc                                     "
" Author: Marnix Massar <marnix@vivesce.re>  "
" Date: June 22nd 2015                       "
"                                            "
" This file is licensed under the Unlicense  "
" ------------------------------------------ "

" Some things for Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim' " Vundle itself
Plugin 'kchmck/vim-coffee-script' " Add CoffeeScript support


" Make sure I can undo after closing
set undofile

" Change to drunklizard, because it looks good
colorscheme drunklizard

" Set the encoding to utf-8
set encoding=utf-8

" Get rid of retarded compatibility mode
set nocompatible

" Disable modelines, because of security exploits
set modelines=0

" Change line hopping to screen lines, not actual lines
nnoremap j gj
nnoremap k gk

" Smart case search
set ignorecase
set smartcase

" Line wrapping is cool
set wrap

" Fancy line numbers
set number

" Show syntax highlighting groups for word under cursor (blatantly stolen from vimcasts.org)
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
      return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Enable syntax highlighting, and auto-indent
syntax on
set autoindent
