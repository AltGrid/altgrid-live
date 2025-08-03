" altgrid.vim - Fallout Terminal / AltGrid Survival Theme
" Matches AltGrid bash prompt color scheme: cold green, signal yellow, muted path gray

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "altgrid"

" Base Colors (approximating the RGB codes used in Bash PS1)
" -----------------------------------------------
" [38;2;102;255;102]  — terminal green
" [38;2;245;235;155]  — yellow alert
" [38;2;70;70;100]    — terminal gray/blue

" Default UI
hi Normal       guifg=#d0d0d0 guibg=#000000 ctermfg=252 ctermbg=NONE
hi CursorLine   guibg=#121212 ctermbg=236
hi CursorColumn guibg=#121212
hi LineNr       guifg=#444444 guibg=NONE
hi CursorLineNr guifg=#66ff66 guibg=NONE ctermfg=83
hi StatusLine   guifg=#000000 guibg=#66ff66 ctermfg=16 ctermbg=83
hi VertSplit    guifg=#404040 guibg=#000000

" Syntax Highlighting
hi Comment      guifg=#707070 ctermfg=244
hi Constant     guifg=#f5eb9b ctermfg=229     " soft yellow (strings, numbers)
hi Identifier   guifg=#66ff66 ctermfg=83      " function/variable names
hi Statement    guifg=#66ff66 ctermfg=83      " keywords like if, for
hi PreProc      guifg=#70a0ff ctermfg=75
hi Type         guifg=#f5eb9b ctermfg=229
hi Special      guifg=#cccccc ctermfg=250
hi Underlined   guifg=#66ff66 gui=underline
hi Todo         guifg=#000000 guibg=#f5eb9b ctermfg=16 ctermbg=229

" Search / Visual Mode
hi Search       guibg=#f5eb9b guifg=#000000 ctermbg=229 ctermfg=16
hi Visual       guibg=#333366 ctermbg=60
hi IncSearch    guibg=#f5eb9b guifg=#000000

" Diff
hi DiffAdd      guibg=#335533
hi DiffChange   guibg=#222255
hi DiffDelete   guifg=#aa2222 guibg=#331111
hi DiffText     guibg=#6666cc

" Tabs / Pmenu
hi Pmenu        guibg=#1c1c1c guifg=#cccccc
hi PmenuSel     guibg=#66ff66 guifg=#000000

" Directory browsing
hi Directory    guifg=#70a0ff ctermfg=75

" MatchParen
hi MatchParen   guibg=#333366 guifg=#ffffff

" Error / Alerts
hi Error        guifg=#ffffff guibg=#aa0000
hi WarningMsg   guifg=#f5eb9b

" Spellcheck (if enabled)
hi SpellBad     guisp=#ff2222 gui=undercurl
hi SpellCap     guisp=#66ff66 gui=undercurl

