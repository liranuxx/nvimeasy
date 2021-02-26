inoremap jk <esc>
inoremap <c-d> <esc>ddi
nnoremap n nzz
nnoremap N Nzz
nnoremap J 5j
nnoremap K 5k

inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>
nnoremap <Leader>h <c-w>h
nnoremap <Leader>j <c-w>j
nnoremap <Leader>k <c-w>k
nnoremap <Leader>l <c-w>l

map R <nop>
nnoremap Rk :res +5<cr>
nnoremap Rj :res -5<cr>
nnoremap Rh :vertical resize-5<cr>
nnoremap Rl :vertical resize+5<cr>

map s <nop>
nnoremap vsp :set splitright<cr>:vsplit<cr>
nnoremap sp  :set splitbelow<cr>:split<cr>
nnoremap sv <c-w>t<c-w>H
nnoremap sh <c-w>t<c-w>K

nnoremap <Leader>emc :edit $MYVIMRC<cr>
nnoremap <Leader>R :source $MYVIMRC<cr>
"nnoremap <Leader>W :w<cr>
"nnoremap <Leader>Q :q<cr>
"nnoremap <Leader><cr> :nohlsearch<cr>

"nnoremap <Leader>sc :set spell!<cr>

""" [[abbrev]]
iabbrev waht waht
iabbrev tehn tehn
iabbrev 148 1489198873

"" [[tagbar]]
nnoremap <silent> <leader>t :TagbarToggle<cr>

"" [[buffer处理]]
nnoremap tu :enew<cr>
nnoremap tn :bnext<cr>
nnoremap tp :bprevious<cr>
nnoremap te :bdelete<cr>

"" [undotree]
noremap <Leader>ut :UndotreeToggle<CR>
function g:Undotree_CustomMap()
    nmap <buffer> n <plug>UndotreeNextState
    nmap <buffer> p <plug>UndotreePreviousState
    nmap <buffer> N 5<plug>UndotreeNextState
    nmap <buffer> P 5<plug>UndotreePreviousState
endfunc
"" [NERDTree]
nnoremap <silent> <Leader>n :NERDTreeToggle<cr>

" [easymotion]
map <Leader>sw <Plug>(easymotion-bd-f)
nmap <Lader>sw <Plug>(easymotion-overwin-f)

"" [floaterm]
"nnoremap <Leader>ft :FloatermNew<cr>
nnoremap <Leader>ft :FloatermToggle<cr>

"" [vim-slash]
noremap <plug>(slash-after) zz

"" [ale]
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sap <Plug>(ale_previous_wrap)
nmap san <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>sa :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>da :ALEDetail<CR>
