" General
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
set updatetime=50                       " Default is set to 4000
set ttyfast                             " Make vim go faster
set formatoptions-=cro                  " Stop newline continution of comments

" Appearance
set cursorline                          " Enable highlighting of the current line
set guicursor=                          " Set the cursor to block always
set nowrap                              " Display long lines as just one line
set number relativenumber               " Relative line numbers
set pumheight=10                        " Makes popup menu smaller
set ruler              		            " Show the cursor position all the time
set termguicolors                       " Required by colorizer and other themes
set title                               " Change the window title

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

" set whichwrap+=<,>,[,],h,l

autocmd BufWritePre * %s/\s\+$//e       " Remove extra whitespace on save

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
