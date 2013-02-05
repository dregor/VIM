set nu
set hls
set ic 
set is
set nocompatible
set scrolljump=5
set scrolloff=5
set mouse=a
set mousemodel=popup
set hidden
set ch=1
set autoindent
set mousehide
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P "F2-Сохр F34-О/З_Tree F56-С/П_Буфер" 
set laststatus=1

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F5 предыдущий буфер
map <F5> :bp<cr>
vmap <F5> <esc>:bp<cr>i
imap <F5> <esc>:bp<cr>i

" F6 - следующий буфер
map <F6> :bn<cr>
vmap <F6> <esc>:bn<cr>i
imap <F6> <esc>:bn<cr>i

" F3-4 - открыть/закрыть Дерево НЕРД
nmap <F3> :NERDTree<cr>
nmap <F4> :NERDTreeClose<cr>


