set nocompatible

" Не выгружать буфер, когда переключаемся на другой
set hidden

"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on
let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'
let g:pydiction_menu_height = 10
"Настройки табов для Python, согласно рекоммендациям
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
"set virtualedit=all " позволяет курсору выходить за пределы строки

"Автоотступ
set autoindent

"Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
setlocal keywordprg=pydoc

"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 

"Вырубаем черточки на табах
set showtabline=0
"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
set foldcolumn=1

"Переносим на другую строчку, разрываем строки
set wrap
set linebreak

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
" Кодировка файлов по умолчанию
set encoding=utf-8 

" Возможные кодировки файлов, если файл не в unicode кодировке,
" то будет использоваться cp1251
set fileencodings=utf8,cp1251 

" Нам не нужен Ex mode
map Q gq


" СТАТУСНАЯ СТРОКА
" Включаем отображение дополнительной информации в статусной строке
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
" " Всегда отображать статусную строку для каждого окна
set laststatus=2
" Включаем отображение выполняемой в данный момент команды в правом нижнем
" углу экрана.
set showcmd
"  Сделать строку команд высотой в одну строку
set ch=1

" ПОИСК
"  Включаем подсветку выражения, которое ищется в тексте
set hlsearch
"  При поиске перескакивать на найденный текст в процессе набора строки
set incsearch
"  Игнорировать регистр букв при поиске
set ignorecase

"НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ КОДА (фолдинг)
"set foldenable " включить фолдинг
"set foldmethod=indent "syntax определять блоки на основе синтаксиса файла
"set foldcolumn=1" показать полосу для управления сворачиванием
"let perl_folding=1 " правильное сворачивание классов и функций Perl
"let php_folding=1 " правильное сворачивание классов и функций PHP
"let python_folding=1 " Python
"set foldlevel=0 " Первый уровень вложенности открыт, остальные закрыты
"set foldopen=all " автоматическое открытие сверток при заходе в них

" Не переключаем раскладку
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set viminfo='100,f1

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - закрыть буфер
nmap <F3> :bd!<cr>
vmap <F3> <esc>:bd!<cr>i
imap <F3> <esc>:bd!<cr>i

" F4 - открыть/закрыть Дерево НЕРД
nmap <silent> <F4> :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$']

" F5 предыдущий буфер
map <F5> :bp!<cr>
vmap <F5> <esc>:bp!<cr>i
imap <F5> <esc>:bp!<cr>i

" F6 - следующий буфер
map <F6> :bn!<cr>
vmap <F6> <esc>:bn!<cr>i
imap <F6> <esc>:bn!<cr>i

nmap <F7> :TagbarToggle<CR> 

"Вызываем SnippletsEmu по F8
"let g:snippetsEmu_key = <C-Tab>                             

let g:tagbar_ctags_bin = '/home/dregor/.vim/ctags/bin/ctags'

" F9 Спитонить
set wildmenu
set wcm=<Tab>
menu executor.python :!python3 %<CR>
menu executor.bash :!bash %<CR>
map <F9> :emenu executor.<Tab>

" Хорошие цвета
colorscheme elflord            
                 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set number smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

