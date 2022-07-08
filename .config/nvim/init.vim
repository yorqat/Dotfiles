call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jparise/vim-graphql'

Plug 'tribela/vim-transparent'
Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

call plug#end()

" Rust
syntax enable
filetype plugin indent on
let g:rustfmt_autosave = 1 " Run rust-fmt after save

" Hybrid line numbering
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" GrubVox theme
let g:gruvbox_italic=1
colorscheme gruvbox

" GrubVox Lightline
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
