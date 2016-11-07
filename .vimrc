call pathogen#infect()

set t_Co=256
set laststatus=2  "potrzebne do airline - kolorowanie vima"
set number		 "numeruje wiersze"
set showmode		"pokazuje kiedy jestem w trybie wprowadzania/nadpisywania"
set showcmd		"Kiedy komenda sie wykonuje, pokazuje ja w pasku stanu"
set wildmenu 		"uzupelnia polecenia w trybie wykonywania"
set ruler		"wlacza linial"
set nowrap		"nie zawijaj tekstu"
set hlsearch		"podswietlaj wszystkie wyniki wyszukiwania"
set showmatch		"podswietlaj odpowiadajace nawiasy"
set autoindent		"Dodaje wciecia inteligentnie"
set expandtab		"Zamieniaj znak tabulacji na spacje"
set ignorecase 		"Ignoruj wielkosc znakow przy wyszukiwaniu"
set smartcase		"jezeli wyszukiwana fraza zawiera wielkie litery przestan ignorowac wielkosc znakow"
set timeoutlen=1000 ttimeoutlen=0
set noswapfile

set autoindent           "uzywa tego samego wciecia w nowej lini"
set incsearch       "wyswietla wyniki wyszukiwania w trakcie wpisywania"

syntax on

let mapleader = "\<Space>"

filetype plugin indent on

autocmd FileType ruby,xml,json,haml,html,slim,eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufWritePost *.rb,*.js silent! !/usr/local/bin/ctags -R 2> /dev/null &
autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

nnoremap <leader>s :w!<CR>

" Mozliwosc uzywania `CTRL + c`
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

"skrot do wyszukiwania plikow"
map <leader>b :FufBuffer<CR>
map <leader>f :FufCoverageFile<CR>
map <leader>t :FufTag<CR>
map <leader>j :silent! %!python -m json.tool<CR> 

" kolorowanie vima AIRLINE"
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"skrot do wlaczania NERDTree"
map <C-n> :NERDTreeToggle<CR>

colorscheme peachpuff
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
