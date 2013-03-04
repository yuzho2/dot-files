set nocompatible
syntax enable
set encoding=utf-8

color darkblue
set number
set showcmd

set tabstop=4
set expandtab

set hlsearch

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif
