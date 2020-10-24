" General
syntax enable                           " Enables syntax highlighing
set mouse=a                             " Enable your mouse
set formatoptions-=cro                  " Stop newline continution of comments
set cmdheight=2                         " More space for displaying messages
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set laststatus=2                        " Always display the status line
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                     " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Set to your default clipboard

" Appearance
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set whichwrap+=<,>,[,],h,l
set pumheight=10                        " Makes popup menu smaller
set ruler              		            " Show the cursor position all the time
set number relativenumber               " Line numbers
set cursorline                          " Enable highlighting of the current line
set termguicolors                       " Required by colorizer                  
" set noshowmode                          " Avoid showing vim mode

"Searching
set hlsearch                            " highlight matches
set incsearch                           " incremental searching
set ignorecase                          " searches are case insensitive...
set smartcase                           " ... unless they contain at least one capital letter

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set iskeyword+=-                      	" treat dash separated words as a word text object"

" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set showtabline=2                       " Always show tabs
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4

" Indentation
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent

" Plugins
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc


au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
