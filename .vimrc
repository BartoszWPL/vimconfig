call pathogen#infect()

set t_Co=256
set laststatus=2
set number
set showmode  "pokazuje kiedy jestem w trybie wprowadzania/nadpisywania"
set showcmd "Kiedy komenda sie wykonuje, pokazuje ja w pasku stanu"
set wildmenu "uzupelnia polecenia w trybie wykonywania"
set ruler "wlacza linial"
set nowrap  "nie zawijaj tekstu"
set hlsearch  "podswietlaj wszystkie wyniki wyszukiwania"
set showmatch "podswietlaj odpowiadajace nawiasy"
set autoindent  "Dodaje wciecia inteligentnie"
set expandtab "Zamieniaj znak tabulacji na spacje"
set ignorecase "Ignoruj wielkosc znakow przy wyszukiwaniu"
set smartcase "jezeli wyszukiwana fraza zawiera wielkie litery przestan ignorowac wielkosc znakow"
set timeoutlen=1000 ttimeoutlen=0
set noswapfile

set autoindent           "uzywa tego samego wciecia w nowej lini"
set incsearch       "wyswietla wyniki wyszukiwania w trakcie wpisywania"

set listchars=tab:╶─,trail:·,extends:>,precedes:< "Pokazuje - zamiast tab i . zamiast spacji na koncu lini"

syntax enable

let mapleader="\<Space>"

filetype plugin indent on

autocmd FileType python,javascript,ruby,xml,json,haml,html,slim setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript,ruby,xml,json,haml,html,slim autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
autocmd BufWritePost *.rb,*.js silent! !/usr/local/bin/ctags -R 2> /dev/null &
autocmd QuickFixCmdPost *grep* cwindow

nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>q :cclose<CR>

"skrot do wyszukiwania plikow w CtrlP"
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>j :silent! %!python -m json.tool<CR>

" kolorowanie vima AIRLINE"
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"skrot do wlaczania NERDTree"
map <C-n> :NERDTreeToggle<CR>

colorscheme peachpuff
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"Syntastic settings"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
