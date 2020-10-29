" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Themes    
    Plug 'vim-airline/vim-airline'          " Status line
    Plug 'morhetz/gruvbox'                  " Gruvbox color plugin
    Plug 'tomasiser/vim-code-dark'          " VsCode color plugin
  " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Coc
  " General
    Plug 'mhinz/vim-startify'               " Start Screen
    Plug 'sheerun/vim-polyglot'             " Better syntax highlighting
    Plug 'tpope/vim-commentary'             " Better Comments
    Plug 'norcalli/nvim-colorizer.lua'      " Color for those hex
    Plug 'airblade/vim-gitgutter'           " GIT integration
    Plug 'tpope/vim-surround'
    Plug 'luochen1990/rainbow'              " Rainbow brackets
    Plug 'ryanoasis/vim-devicons'           " Cool Icons
    Plug 'psliwka/vim-smoothie'             " Smooth scroll
    Plug 'AndrewRadev/tagalong.vim'         " HTML | Auto change tags
    " Plug 'jiangmiao/auto-pairs'             " Auto pairs for '(' '[' '{'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
