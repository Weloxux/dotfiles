" cream.vim
" Author: Marnix Massar <marnix@vivesce.re>
" Licensed under the The Final Countdown Public License

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla253921"

if version >= 700
  hi CursorLine     guibg=#FFFCFF ctermbg=231
  hi CursorColumn   guibg=#FFFCFF ctermbg=231
  hi MatchParen     guifg=#BD401C guibg=#FFFCFF gui=bold ctermfg=130 ctermbg=231 cterm=bold
  hi Pmenu          guifg=#000000 guibg=#C8C8C8 ctermfg=16 ctermbg=251
  hi PmenuSel       guifg=#000000 guibg=#4E80A8 ctermfg=16 ctermbg=67
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#000000 ctermbg=16 gui=none
hi Normal           guifg=#000000 guibg=#FFFCFF gui=none ctermfg=189 ctermbg=237 cterm=none
hi NonText          guifg=#000000 guibg=#F0EDF0 gui=none ctermfg=16 ctermbg=237 cterm=none
hi LineNr           guifg=#B8B5B8 guibg=#E6E3E6 gui=none ctermfg=249 ctermbg=237 cterm=none
hi StatusLine       guifg=#000000 guibg=#DBE3ED gui=italic ctermfg=16 ctermbg=237 cterm=italic
hi StatusLineNC     guifg=#000000 guibg=#D7D4D7 gui=none ctermfg=16 ctermbg=188 cterm=none
hi VertSplit        guifg=#000000 guibg=#E6E3E6 gui=none ctermfg=16 ctermbg=254 cterm=none
hi Folded           guifg=#000000 guibg=#FFFCFF gui=none ctermfg=16 ctermbg=231 cterm=none
hi Title            guifg=#4E80A8 guibg=NONE	gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Visual           guifg=#2CDE2B guibg=#C8C8C8 gui=none ctermfg=40 ctermbg=251 cterm=none
hi SpecialKey       guifg=#D96852 guibg=#F0EDF0 gui=none ctermfg=167 ctermbg=255 cterm=none
"hi DiffChange       guibg=#FFFCB2 gui=none ctermbg=229 cterm=none
"hi DiffAdd          guibg=#D8D5FF gui=none ctermbg=189 cterm=none
"hi DiffText         guibg=#FFC9FF gui=none ctermbg=225 cterm=none
"hi DiffDelete       guibg=#FFBDBF gui=none ctermbg=217 cterm=none


" Syntax highlighting
hi Comment guifg=#4E80A8 gui=none ctermfg=67 cterm=none
hi Constant guifg=#D96852 gui=none ctermfg=167 cterm=none
hi Number guifg=#D96852 gui=none ctermfg=167 cterm=none
hi Identifier guifg=#943399 gui=none ctermfg=11 cterm=none
hi Statement guifg=#BD401C gui=none ctermfg=130 cterm=none
hi Function guifg=#D99C46 gui=none ctermfg=179 cterm=none
hi Special guifg=#319B3D gui=none ctermfg=65 cterm=none
hi PreProc guifg=#319B3D gui=none ctermfg=65 cterm=none
hi Keyword guifg=#BD401C gui=none ctermfg=130 cterm=none
hi String guifg=#2CDE2B gui=none ctermfg=97 cterm=none
hi Type guifg=#B99337 gui=none ctermfg=137 cterm=none
hi pythonBuiltin guifg=#943399 gui=none ctermfg=96 cterm=none
hi TabLineFill guifg=#AAF0AA gui=none ctermfg=157 cterm=none
