" altgrid.vim — Fallout-Inspired Vim Colorscheme
" Designed for ALTGRID terminal systems — no GUI, 256-color safe
" Author: Leo Blanchette, 2025
" License: Public Domain / Copyleft Forever

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "altgrid"

" ------------------------------------------------------------------------------
" BASIC UI COLORS
" ------------------------------------------------------------------------------

hi Normal       ctermfg=46  ctermbg=NONE
hi Cursor       ctermfg=0   ctermbg=46
hi CursorLine   ctermbg=235
hi LineNr       ctermfg=22  ctermbg=NONE
hi CursorLineNr ctermfg=118 ctermbg=NONE  gui=bold

hi StatusLine   ctermfg=0   ctermbg=46    gui=bold
hi StatusLineNC ctermfg=0   ctermbg=22
hi VertSplit    ctermfg=22  ctermbg=22

hi Pmenu        ctermfg=0   ctermbg=28
hi PmenuSel     ctermfg=0   ctermbg=46
hi Visual       ctermfg=0   ctermbg=28
hi Search       ctermfg=0   ctermbg=154

" ------------------------------------------------------------------------------
" TEXT & SYNTAX — Subtle shades, minimal glow
" ------------------------------------------------------------------------------

hi Comment      ctermfg=22
hi Constant     ctermfg=120
hi Identifier   ctermfg=118
hi Statement    ctermfg=82
hi PreProc      ctermfg=70
hi Type         ctermfg=83
hi Special      ctermfg=76
hi Underlined   ctermfg=119
hi Todo         ctermfg=0   ctermbg=190
hi Error        ctermfg=15  ctermbg=88

" ------------------------------------------------------------------------------
" Filetype-Agnostic Tags
" ------------------------------------------------------------------------------

hi Title        ctermfg=46  gui=bold
hi Directory    ctermfg=46  gui=bold
hi WarningMsg   ctermfg=196 gui=bold
hi ModeMsg      ctermfg=46
hi Question     ctermfg=154

" ------------------------------------------------------------------------------
" AltGrid-Specific Hints
" ------------------------------------------------------------------------------

" You can assign special color groups in custom syntax files for .stamp, .grid, etc
hi AltGridID        ctermfg=118
hi AltGridRoute     ctermfg=82
hi AltGridMetadata  ctermfg=72
hi AltGridDebug     ctermfg=240

" These won't be used unless your syntax files define them

