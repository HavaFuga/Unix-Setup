set nospell spelllang=en_us,de_ch " According to coding standards

"autocmd FileType latex setlocal spell spelllang=de_ch
"autocmd FileType plaintex setlocal spell spelllang=de_ch
"autocmd FileType tex setlocal spell spelllang=de_ch

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
    Plug 'vim-latex/vim-latex'  "Latex
    Plug 'flrnprz/plastic.vim'  "colorscheme
call plug#end()

" Do compile LaTex as PDF, not as DVI
let g:Tex_DefaultTargetFormat = "pdf"

" Theme
set background=dark
syntax on
colorscheme plastic


" ---  NETRW - the unloved directory browser ---
" edit netrw
let g:netrw_banner = 0          " remove banner
let g:netrw_altv = 1            " open in vertical split
let g:netrw_winsize = 20        " windows size is 20%
let g:NetrwIsOpen=0

" activate netrw with F5
nnoremap <F5> :call ToggleNetrw() <CR>

" checks and toggles netrw
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction


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
