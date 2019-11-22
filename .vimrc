set nospell spelllang=de_ch,en_us " According to coding standards

"autocmd FileType latex setlocal spell spelllang=de_ch
"autocmd FileType plaintex setlocal spell spelllang=de_ch
"autocmd FileType tex setlocal spell spelllang=de_ch

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
    Plug 'vim-latex/vim-latex'      " Latex
    Plug 'flrnprz/plastic.vim'      " colorscheme
   "Plug 'altercation/vim-colors-solarized' "colorscheme syntax 
    Plug 'scrooloose/nerdtree'      " Explorer
    Plug 'Shougo/neocomplete.vim'   " Autocompletion
    Plug 'vim-syntastic/syntastic'  " Syntax checker
    Plug 'Townk/vim-autoclose'      " Autoclose
    Plug 'majutsushi/tagbar'        " Browse the tags
    Plug 'wesQ3/vim-windowswap'     " swap windows
    Plug 'stanangeloff/php.vim'     " PHP
    Plug 'phpactor/phpactor'        " PHP
    "Plug 'lvht/phpcd.vim'           " PHP help
    "Plug 'tobyS/pdv'                " PHP help 2
call plug#end()

" Colorscheme solarized
syntax enable
"set background=dark
"colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif


" Syntastic Setup
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
map <F6> :SyntasticToggle <CR>


" Window-Swap Setup
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>"


" Do compile LaTex as PDF, not as DVI
let g:Tex_DefaultTargetFormat = "pdf"


" Theme
syntax on
syntax enable
set background=dark


" set F4 for Tagbar Toggle
map <F4> :TagbarToggle<CR>

" set F5 for explorer
map <F3> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'
let g:NERDTreeWinPos = 'left'


" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" activate Spelling with F2
nnoremap <F2> :setlocal spell! spell?<CR>

set mouse=a  
set tabstop=4
set hlsearch
set number
set colorcolumn=80          " show a line at 80 chars


" generate pdf like 'autolatex' does
autocmd FileType latex setlocal spell makeprg=autolatex
autocmd FileType plaintex setlocal spell makeprg=autolatex
autocmd FileType tex setlocal spell makeprg=autolatex
