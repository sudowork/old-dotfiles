set t_Co=256
syntax on
colorscheme wombat256
hi SpellBad      ctermfg=DarkRed     term=Reverse    guisp=DarkRed     gui=undercurl   ctermbg=Black
hi SpellCap      ctermfg=DarkGreen   term=Reverse    guisp=DarkGreen   gui=undercurl   ctermbg=Black
hi SpellLocal    ctermfg=Cyan        term=Underline  guisp=Cyan        gui=undercurl   ctermbg=Black
hi SpellRare     ctermfg=Magenta     term=underline  guisp=Magenta     gui=undercurl   ctermbg=Black
hi SpecialKey    ctermfg=Grey        ctermbg=Black
"hi NonText       ctermfg=Black

" Basic settings
filetype plugin on
filetype indent on
filetype plugin indent on
set grepprg=grep\ -nH\ $*
set number
set spell
set tabstop=4
set shiftwidth=4
set list
set expandtab
set wildmode=longest,list,full
set wildmenu
set hlsearch
set incsearch
nnoremap <CR> :noh<CR><CR>
set listchars+=tab:→\ ,eol:\ 
"set listchars+=tab:→\ ,eol:\·

let &showbreak = '↳ '
set wrap
set cpo=n

" Prevent spellcheck for programming languages
autocmd FileType * set nospell

let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='Preview'
autocmd FileType tex set spell

set printoptions=paper:letter

" NERDTree Reveal in Tree
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>

" Tagbar Toggle
map <F4> :TagbarToggle<CR>

" Pathogen Setup
call pathogen#infect()

" Omni-complete
set ofu=syntaxcomplete#Complete
set tags+=~/.vim/tags/*
set tags+=./tags
" Omni-cpp
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Put all vim swap files in one place 
set directory^=$HOME/.vim/swap

" Set default spacing for javascript and css
au BufEnter *.js setl ts=2 sw=2 expandtab
au BufEnter *.css setl ts=2 sw=2 expandtab

" Powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols = 'fancy'

" JSON support
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END
