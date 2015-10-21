" OK given that vim's 'normal' mode has its uses, we should probably allow for getting there.
" Nobody really needs to type two commas in a row. Use that to get out of insert mode instead.
inoremap ,, <esc>
vnoremap ,, <esc>

" In normal mode, single comma does mapleader.
let mapleader = ","

" OK, so this is going to get you out of insert mode and then do leader plus dot.
imap ,. ,,,.

" Leader plus dot is a way to access menu shortcuts (Alt+f, X type thing) even when your alt key won't work.

noremap <leader>.fo <esc>:find<Space>
noremap <leader>.fs <esc>:w<Space>
noremap <leader>.fd <esc>:w !diff % -<CR>
noremap <leader>.fa <esc>:w<Space>
noremap <leader>.fc <esc>:confirm quit<CR>
noremap <leader>.fx <esc>:confirm quitall<CR>
noremap <leader>.fc<CR> <esc>:confirm quit<CR>
noremap <leader>.fx<CR> <esc>:confirm quitall<CR>
noremap <leader>.fz <esc><C-Z>

noremap <leader>.ec <esc>Vy
noremap <leader>.ep <esc>P
noremap <leader>.ea <esc>ggVG
noremap <leader>.eu <esc>u
noremap <leader>.er <esc>R
noremap <leader>.esa <esc>ggVG
noremap <leader>.esb <esc>b
noremap <leader>.esw <esc>viw
noremap <leader>.esW <esc>viW
noremap <leader>.esl <esc><home>v<end>
noremap <leader>.esp <esc>{v}
noremap <leader>.est <esc>vit
noremap <leader>.esT <esc>vat
noremap <leader>.es{ <esc>vi{
noremap <leader>.es[ <esc>vi[
noremap <leader>.es( <esc>vi(
noremap <leader>.es" <esc>vi"
noremap <leader>.es' <esc>vi'
noremap <leader>.es` <esc>vi`

vnoremap <leader>.etcu Ugv
vnoremap <leader>.etcl ugv
"vnoremap <leader>.etcs :s/([- ]|)/_/g<CR>gv
vnoremap <leader>.etcl ugv

noremap <leader>.vpe <esc>:find $MYVIMRC<CR>
noremap <leader>.vpr <esc>:source $MYVIMRC<CR>
noremap <leader>.vmi <esc>i
noremap <leader>.vmn <esc>
noremap <leader>.vmc <esc>:
noremap <leader>.vmb <esc><C-V>

noremap <leader>.g <esc>:!git
noremap <leader>.gs <esc>:!git status
noremap <leader>.gda <esc>:!git diff

" move between tabs with []
" ctrl+tab doesn't register as different from tab. ctrl+[ is esc.

nnoremap [ :bnext<CR>:redraw<CR>
nnoremap ] :bprevious<CR>:redraw<CR>

vnoremap [ :bnext<CR>:redraw<CR>
vnoremap ] :bprevious<CR>:redraw<CR>

noremap <leader>.[ :bnext<CR>:redraw<CR>
noremap <leader>.] :bprevious<CR>:redraw<CR>
