call plug#begin()
  Plug 'tpope/vim-sensible' " minimal niceties
  Plug 'itchyny/lightline.vim' " status bar
  Plug 'sheerun/vim-polyglot' " syntax highlighting for 120+ languages, on-demand loading
  Plug 'ntpeters/vim-better-whitespace' " highlight whitespace in red
  Plug 'airblade/vim-gitgutter' " git info left on line numbers
  Plug 'preservim/nerdtree' " filesystem tree in sidebar
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim' " fuzzy search - requires both of these packages, this is the intended install method
  Plug 'LunarWatcher/auto-pairs' " Insert or delete brackets, parens, and quotes in pairs
call plug#end()

" Enables line numbering
set number

" replace tabs with spaces
set expandtab
" make tab be 2 white spaces
set shiftwidth=2
" auto indent
set autoindent
set smartindent

" Enables line wrap on moving cursor left/right on a newline character
set whichwrap+=<,>,h,l,[,]

" show leader key and other keys in on the status bar
set showcmd
" set leader key to something normal, default is \
let mapleader = ","

" GitGutter settings
set signcolumn=number
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

""" key rebinds
" Bubble single lines up and down
nnoremap <A-up> :.move -2<CR>
nnoremap <A-down> :.move +1<CR>

" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

" Set File Type
autocmd BufRead,BufNewFile ~/.ssh/config.d/* set filetype=sshconfig
