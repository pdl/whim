
inoremap <C-a> <esc>ggVG
inoremap <C-w> <esc>:confirm quit<CR>
inoremap <C-s> <esc>:w<Space>
inoremap <C-o> <esc>:find<Space>
inoremap <C-b> <esc>V"zy"zPi
inoremap <C-n> <esc>:execute "badd " . strftime("~/%Y-%m-%d_%H.%M.%S.tmp", localtime())<CR>:buffer -1<CR>
