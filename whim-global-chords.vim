" Undo is sacrosanct; zzz snoozes

noremap <C-z> <esc>u
inoremap <C-z> <esc>u
vnoremap <C-z> <esc>u
nnoremap <C-z> u
nnoremap z <esc>u
noremap <leader>z <esc>u

" Ctrl+Shift+Z is not detectable
nnoremap <S-Z> <esc><C-R>
noremap <C-\> <esc><C-R>
noremap <C-y> <esc><C-R>
noremap <leader>Z <esc><C-R>

nnoremap zzz <C-Z>
nnoremap <leader>.zzz <C-Z>

" Ctrl+F is find. Ctrl+G is go to line. Ctrl+H is replace. We hold these truths to be self-evident.

noremap <C-f> <Esc>//gi<Left><Left><Left>
inoremap <C-f> <Esc>//gi<Left><Left><Left>
noremap <C-g> <Esc>:
noremap <C-h> <Esc>:%s///gic<Left><Left><Left><Left><Left>
inoremap <C-h> <Esc>:%s///gic<Left><Left><Left><Left><Left>

" Ctrl+space for autocomplete
inoremap <C-@> <C-x><C-o>
