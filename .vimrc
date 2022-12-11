" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Highlight cursor line underneath the cursor
"set cursorline
"set cursorcolumn

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Disables insert promp (to avoid duplication with powerline)
set noshowmode

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
" set t_Co=256
" set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1

" put https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
" in ~/.vim/colors/ and use molokai:
"colorscheme molokai

" Viminfo
set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo

" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Basic plugin selection heavily inspired by: https://github.com/danirod/vimrc

" coding: related to programming itself.

Plug 'w0rp/ale'
  " this is the linter and formatter, it quacks about lint errors
  " and when you save, it can format the code for you
Plug 'editorconfig/editorconfig-vim' 
  " adds support for the EditorConfig file format to Vim
Plug 'sheerun/vim-polyglot' 
  " extra language packs for otherwise unsupported languages

" editor: related to the text editor itself.

Plug 'tmsvg/pear-tree' 
  " inserts brackets and parenthesis automatically
Plug 'ervandew/supertab' 
  " makes tab work in insert mode
Plug 'alvan/vim-closetag' 
  " closes HTML tags as they are inserted
Plug 'tpope/vim-endwise' 
  " it's like pear-tree but for more verbose structures like:
  " Ruby (begin-end), Elixir (do-end), C preprocessor (#if #endif)...
Plug 'jeffkreeftmeijer/vim-numbertoggle' 
  " switches absolute to relative depending on inset mode

" lsp: the language server capabilities

Plug 'prabirshrestha/asyncomplete.vim' 
  " manages the completion menu asynchronouslly
Plug 'prabirshrestha/asyncomplete-lsp.vim' 
  " use vim-lsp as a data source for asyncomplete
Plug 'prabirshrestha/vim-lsp' 
  " language server protocol
Plug 'mattn/vim-lsp-settings' 
  " defaults for a lot of programming languages, makes managing LSPs a breeze
   
" shell: plugins for the core vim
Plug 'ctrlpvim/ctrlp.vim' 
  " classic and mighty file, buffer and tag explorer, 
  " opens on a side and doesn't take your current buffer away
Plug 'preservim/nerdtree'
  " explorer panel
Plug 'junegunn/fzf.vim'
  " fuzzy finder

" themes
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" Fix for comments with cursorbar
"augroup nord-overrides
"  autocmd!
"  autocmd ColorScheme nord highlight Comment ctermfg="5f6c85" guifg="4e586d"
"augroup END

colorscheme nord
let g:lightline = { 'colorscheme': 'nord' }
let g:nord_cursor_line_number_background = 0
