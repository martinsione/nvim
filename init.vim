""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""General""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                           " Enable syntax highlighing
set autoindent                          " Good auto indent
set clipboard=unnamedplus               " Set to your default clipboard
set cmdheight=1                         " Change command height
set encoding=utf-8
set hidden                              " Required to keep multiple buffers open multiple buffers
set iskeyword+=-                      	" treat dash separated words as a word text object"
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set smartindent                         " Makes indenting smart
set splitbelow splitright               " Fixes splitting
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set updatetime=100                      " Default is set to 4000
set ttyfast                             " Make vim go faster
set formatoptions-=cro                  " Stop newline continution of comments

" Searching
set nohlsearch                          " Don't Highlight matches
set incsearch                           " Allow vim to start searching before pressing enter
set ignorecase                          " Searches are case insensitive
set smartcase                           " Unless they contain at least one capital letter
" Built-in FZF
set nocompatible                        " Limit the search to the project
set path+=**                            " Search down into subfolders provides tab-completion for all file-related tasks
set wildmenu                            " Display all matching files when we tab complete

" Tabs
set expandtab
set shiftwidth=4
set showtabline=4                       " Always show tabs
set softtabstop=4                       " Tab acting as tab when deleting
set tabstop=4

" Appearance
set cursorline                          " Enable highlighting of the current line
set guicursor=                          " Set the cursor to block always
set nowrap                              " Display long lines as just one line
set number relativenumber               " Relative line numbers
set pumheight=10                        " Makes popup menu smaller
set ruler              		            " Show the cursor position all the time
set termguicolors                       " Required by colorizer and other themes
set title                               " Change the window title
set t_Co=256
set t_ut=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""Plugins""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Coc
  " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
  " Git
    Plug 'airblade/vim-gitgutter'           " GIT integration
    Plug 'tpope/vim-fugitive'               " Best plugin ever
  " General
    Plug 'AndrewRadev/tagalong.vim'         " Auto change HTML tags
    Plug 'luochen1990/rainbow'              " Rainbow brackets
    Plug 'mhinz/vim-startify'               " Start Screen
    Plug 'norcalli/nvim-colorizer.lua'      " Colorizer
    Plug 'psliwka/vim-smoothie'             " Smooth scroll
    Plug 'ryanoasis/vim-devicons'           " Cool Icons
    Plug 'sheerun/vim-polyglot'             " Better syntax highlighting
    Plug 'tpope/vim-commentary'             " Better Comments
    Plug 'tpope/vim-surround'               " Change sorrounding tags
    Plug 'vim-airline/vim-airline'          " Status line
  " Themes
    Plug 'morhetz/gruvbox'                  " Gruvbox color plugin
    Plug 'tomasiser/vim-code-dark'          " VsCode color plugin

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""Plug-Conf""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
let g:gruvbox_termcolors=1
let g:gruvbox_invert_tabline=1
let g:gruvbox_sign_column = 'bg0'
colorscheme gruvbox

" Sources

if !exists('g:vscode')
  source $HOME/.config/nvim/vscode/settings.vim
endif

source $HOME/.config/nvim/plug-config/airline.vim        " Airline theme
source $HOME/.config/nvim/plug-config/closetags.vim      " Call closetags
source $HOME/.config/nvim/plug-config/coc.vim            " Call Coc
source $HOME/.config/nvim/plug-config/gitgutter.vim      " Call Gitgutter
source $HOME/.config/nvim/plug-config/netrw.vim          " Call netrw
source $HOME/.config/nvim/plug-config/polyglot.vim       " Call polyglot
source $HOME/.config/nvim/plug-config/rainbow.vim        " Call rainbow brackets
source $HOME/.config/nvim/plug-config/start-screen.vim   " Startify

" Colorizer
luafile $HOME/.config/nvim/lua/plug-colorizer.lua


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""Keymappings""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader key
let mapleader=' '

" Better indenting
vnoremap < <gv
vnoremap > >gv

" TAB in normal mode will move to next buffer SHIFT-TAB will go back
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Save with Ctrl + S
nnoremap <silent> <C-s> :w<CR>
" Close a buffer with Ctrl + Q
nnoremap <silent> <C-q> :bd<CR>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""Autocmd""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufWritePre * %s/\s\+$//e       " Remove extra whitespace on save
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
