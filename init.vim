"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/



" General Settings
source $HOME/.config/nvim/general/settings.vim              " General settings XD
source $HOME/.config/nvim/general/keymaps.vim               " nvim keybinds

" Plugins
source $HOME/.config/nvim/plugins/plugins.vim               " Call the plugins
source $HOME/.config/nvim/plugins/config/closetags.vim      " Call closetags
source $HOME/.config/nvim/plugins/config/coc.vim            " Call Coc
source $HOME/.config/nvim/plugins/config/highlightyank.vim  " Call closetags
source $HOME/.config/nvim/plugins/config/rainbow.vim        " Call closetags
source $HOME/.config/nvim/plugins/config/sneak.vim          " Call closetags


" Start screen
source $HOME/.config/nvim/plugins/config/start-screen.vim   " Startify         

" Colorizer
luafile $HOME/.config/nvim/plugins/lua/plug-colorizer.lua

" Themes
source $HOME/.config/nvim/plugins/themes/airline.vim        " Airline theme
source $HOME/.config/nvim/plugins/themes/codedark.vim      " Vscode theme
" source $HOME/.config/nvim/plugins/themes/gruvbox.vim        " Gruvbox theme
" source $HOME/.config/nvim/plugins/themes/molokai.vim      " Vscode theme
