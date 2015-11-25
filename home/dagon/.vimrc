" ------------------------------------------ "
" .vimrc                                     "
" Author: Marnix Massar <marnix@vivesce.re>  "
" Date: November 22nd 2015                       "
"                                            "
" This file is licensed under the Unlicense  "
" ------------------------------------------ "

" Change to elflord, because it looks good
set t_Co=256  " make use of 256 terminal colors 
colorscheme elflord
sy on

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

" Rainbow parentheses
let g:rainbow_active = 1

" Easier window switching
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
