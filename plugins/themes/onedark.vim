" Change background
" #C678DF  default purple color
let g:onedark_color_overrides = {
\ "black": {"gui": "#181A1B", "cterm": "235", "cterm16": "0" },
\ "purple": { "gui": "#af86d2", "cterm": "170", "cterm16": "5" }
\}

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
