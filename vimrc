
" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2		" more powerful backspacing

" add 2016/03/21
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set showmatch
set number
set ruler
set cursorline
set hlsearch
set visualbell
set title
set hlsearch

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" add 2017/03/20
colorscheme molokai
syntax on

" HJKL on insert mode
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-h> <left>
inoremap <C-l> <right>

" Filer
noremap <S-f> VimFiler -split -simple -winwidth=35 -no-quit

" Modified code
nnoremap == gg=G

" dein-vim
noremap 11 :VimFiler -split -simple -winwidth=30 -no-quit<ENTER>

" enable vimfiler
" autocmd VimEnter * VimFilerExplorer
autocmd VimEnter * VimFilerExplorer | call s:MovePointerToMain()

function s:MovePointerToMain()
  call feedkeys("\<C-w>")
  call feedkeys("\<C-w>")
endfunction

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/tkoyama/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/tkoyama/.vim/dein/')
  call dein#begin('/Users/tkoyama/.vim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/tkoyama/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('tomtom/tcomment_vim') " commnet on some laws
  call dein#add('cohama/lexima.vim') " insert cacco automatically
  call dein#add('vim-scripts/AnsiEsc.vim') " log color scheme
  "call dein#add('bronson/vim-trailing-whitespace') " visualize margin space on line
  call dein#add('junegunn/vim-easy-align') " modify code

  " vim explorer
  call dein#add('Shougo/unite.vim') " useful plugin to use vimfilter and more
  call dein#add('Shougo/vimfiler.vim') " vim file explorer
  let g:vimfiler_as_default_explorer = 1

  " indent guide on colum
  call dein#add('nathanaelkane/vim-indent-guides')
  let g:indent_guides_enable_on_vim_startup = 1

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

