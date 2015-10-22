" Seriously, skippy up/down is just wrong

noremap <Up> g<Up>
noremap <Down> g<Down>

" If you're going to have a mode in which the keyboard stands in for cursor keys, why would you NOT use WASD?
nnoremap w g<Up>
nnoremap a <Left>
nnoremap s g<Down>
nnoremap d <Right>

nnoremap <C-w> {
nnoremap <C-a> b
nnoremap <C-s> }
nnoremap <C-d> w

vnoremap w g<Up>
vnoremap a <Left>
vnoremap s g<Down>
vnoremap d <Right>

vnoremap <S-w> g<Up>
vnoremap <S-a> <Left>
vnoremap <S-s> g<Down>
vnoremap <S-d> <Right>

vnoremap <C-w> {
vnoremap <C-a> b
vnoremap <C-s> }
vnoremap <C-d> w

nnoremap \ V
nnoremap \w Vk
nnoremap \a v<Home>
nnoremap \s Vj
nnoremap \d v<End>

nnoremap . <nop>
nnoremap .. :
nnoremap .w gg
nnoremap .a <Home>
nnoremap .s G
nnoremap .d <End>

nnoremap .i "zdgg
nnoremap .j "zd0
nnoremap .k "zdG
nnoremap .l "zd$

nnoremap \i <C-V>j
nnoremap \j <C-V>h
nnoremap \k <C-V>k
nnoremap \l <C-V>l

nnoremap \\ <C-V>
nnoremap \\\ V
vnoremap \\ <C-V>
vnoremap \\\ V

" undo
" noremap <C-\> <C-V>
" noremap <C-\><C-\> V

vnoremap . <nop>
vnoremap .. :

vnoremap .w gg
vnoremap .a <Home>
vnoremap .s G
vnoremap .d <End>


" When I go to the end of a line and try to edit, I want to start editing at the end, not before the last character

":call SensibleInsert()<CR>
function! SensibleInsert()
  if col(".")==col("$")-1
    startinsert!
  else
    startinsert
  endif
endfunction

" So if wasd is the cursor, then e and q are interaction keys.
" e triggers insert mode, as does CR
" q toggles between normal and visual mode

nnoremap e :call SensibleInsert()<CR>
vnoremap e :call SensibleInsert()<CR>
nnoremap q v
vnoremap q <esc>
nnoremap <CR> :call SensibleInsert()<CR>
vnoremap <CR> "zd:call SensibleInsert()<CR>

" Ctrl+e, Ctrl+q likely to be used to toggle
inoremap <C-e> <Esc>
inoremap <C-q> v
nnoremap <C-e> :call SensibleInsert()<CR>
vnoremap <C-e> :call SensibleInsert()<CR>
nnoremap <C-q> v
vnoremap <C-q> <esc>

" Browsers do this, less does this. But in vim, space means cursor right. Annoyingly, shift-space doesn't seem to be picked up.
nnoremap <space> <PageDown>
nnoremap <S-space> <PageUp>

vnoremap <space> <PageDown>
vnoremap <S-space> <PageUp>

" Hahaha, now vim users will know what everyone else feels like the first time they discover that $EDITOR=vim
" ijkl deletes line before, char before, current line and current char
nnoremap i k"zdd
nnoremap j "zdh
nnoremap k "zdd
nnoremap l "zdl

" ctrl+j and ctrl+l delete words; ctrl+k deletes to the end of the paragraph. Ctrl+i is tab so we can't touch it.
nnoremap <C-j> "zdb
nnoremap <C-l> "zdw
nnoremap <C-k> "zd}

" Shift-ijkl moves current line/char
nnoremap <S-i> "zddk"zP
nnoremap <S-j> "zdlh"zP
nnoremap <S-k> "zddj"zP
nnoremap <S-l> l"zdhl"zP

" ijkl deletes line before, char before, current line and current char
vnoremap i <esc>kddgv
vnoremap j <esc>"zdhgv
vnoremap k <esc>"zddgv
vnoremap l <esc>"zdgv

" Shift-ijkl moves current selection
vnoremap <S-i> <esc>"zd`<gj"zP`<gjv`>gj
vnoremap <S-j> "zd`<h"zP`<hv`>h
vnoremap <S-k> <esc>"zd`<gk"zP`<gkv`>gk
vnoremap <S-l> "zd`<l"zP`<lv`>l

" This is a computer, not a typewriter: backspaces deletes the previous character.
nnoremap <BS> "zdhi
vnoremap <BS> "zdhli
nnoremap <Del> <Del>i
vnoremap <Del> <Del>i

" Copy and paste
" Linewise if nothing is selected

nnoremap <x> Vd
nnoremap <c> Vy
nnoremap <v> Pl

nnoremap <C-x> Vd
nnoremap <C-c> Vy
nnoremap <C-v> Pl

inoremap <C-x> <esc>Vd<insert>
inoremap <C-c> <esc>Vy<insert>
inoremap <C-v> <esc>pl<insert>

vnoremap <x> dgv
vnoremap <c> ygv
vnoremap <v> "zdPl

vnoremap <C-x> dgv
vnoremap <C-c> ygv
vnoremap <C-v> "zdPl

inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

inoremap <S-Up> <esc><Left>vg<Up>
inoremap <S-Left> <esc><Left>v
inoremap <S-Down> <esc>vg<Down><Left>
inoremap <S-Right> <esc>v

nnoremap <S-Up> <Left>vg<Up>
nnoremap <S-Left> <Left>v
nnoremap <S-Right> v
nnoremap <S-Down> vg<Down><Left>

nnoremap <S-w> <esc><Left>vg<Up>
nnoremap <S-a> <esc><Left>v
nnoremap <S-d> <esc>v
nnoremap <S-s> <esc>vg<Down><Left>

"nnoremap <S-C-A> <esc>vb
"nnoremap <S-C-D> <esc>vw

noremap <C-Left> <S-Left>
noremap <C-Right> <S-Right>

inoremap <C-BS>   "zdb
inoremap <C-kDel> "zdw
nnoremap <C-kDel> "zdw

inoremap <C-p> <esc>viW
inoremap <C-p><C-p> <esc>viw
inoremap <C-p><C-p><C-p> <esc>V
inoremap <C-p><C-p><C-p><C-p> <esc>(V)

nnoremap <C-p> viW
nnoremap <C-p><C-p> viw
nnoremap <C-p><C-p><C-p> V
nnoremap <C-p><C-p><C-p><C-p> (V)

vnoremap <C-p><C-p><C-p> V

inoremap <C-S-Left> <esc>v<S-Left>
inoremap <C-S-Right> <esc>v<S-Right>

nnoremap <C-S-Left> <esc>v<S-Left>
nnoremap <C-S-Right> <esc>v<S-Right>

vnoremap <S-Left> <Left>
vnoremap <S-Right> <Right>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>

vnoremap <C-Left> <S-Left>
vnoremap <C-Right> <S-Right>
vnoremap <C-Up> {
vnoremap <C-Down> }

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

noremap <C-o> <C-I>
noremap <C-u> <C-O>

nnoremap o <C-I>
nnoremap u <C-O>
