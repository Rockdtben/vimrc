set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

color torte

set number
set ai
set nobackup

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
inoremap   <Insert>  <NOP>
inoremap   <Home>  <NOP>
inoremap   <End>  <NOP>
inoremap   <Delete>  <NOP>
inoremap   <PageUp>  <NOP>
inoremap   <PageDown>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   <Insert>  <NOP>
noremap   <Home>  <NOP>
noremap   <End>  <NOP>
noremap   <Delete>  <NOP>
noremap   <PageUp>  <NOP>
noremap   <PageDown>  <NOP>

"Won't use these for a while.
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>

set guioptions-=m "remove menu
set guioptions-=T "remove toolbaru
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar
