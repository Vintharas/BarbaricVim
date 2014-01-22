" MacVim settings
if has("gui_macvim")
  set antialias                   " MacVim: smooth fonts.
  set encoding=utf-8              " MacVim: use UTF-8 everywhere.
  set guioptions-=T               " MacVim: hide toolbar.
  set guioptions-=r               " MacVim: hide right scrollbar.
  set guioptions-=R               " MacVim: hide right scrollbar.
  set guioptions-=l               " MacVim: hide left scrollbar.
  set guioptions-=L               " MacVim: hide left scrollbar.
endif

" Gvim windows
if has("win32") || has("win16")
  set guioptions-=T               " Hide toolbar.
  set guioptions-=r               " hide right scrollbar.
  set guioptions-=R               " hide right scrollbar.
  set guioptions-=l               " hide left scrollbar.
  set guioptions-=L               " hide left scrollbar.
endif

set lines=25 columns=100          " Window dimensions.

set background=dark               " Dark background.
colorscheme molokai
let g:molokai_original = 1
set guifont=Inconsolata:h16       " Decent font.

highlight SPELLING guibg=blue     " Highlight likely typos.
match SPELLING /toin/

" Size and position window for different displays.

function! Cinema()
  set lines=126 columns=124
  winpos 1075 1570
endfunction

function! Laptop()
  set lines=71 columns=120
  winpos 365 878
endfunction
