" altgrid.vim — AltGrid Color Alignment (Fallout-TUI Inspired)
" Rewritten to match deep navy, brown, beige, blue, and signal yellow
" Author: Leo Blanchette, 2025
" License: Public Domain / Copyleft Forever

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "altgrid"

" ------------------------------------------------------------------------------
" BASIC UI COLORS — Terminal layout, focus, cursor
" ------------------------------------------------------------------------------

hi Normal         ctermfg=230  ctermbg=NONE       " Warm Beige foreground
hi Cursor         ctermfg=233  ctermbg=230        " Deep Navy on beige
hi CursorLine     ctermbg=234                     " Slightly lighter navy
hi LineNr         ctermfg=94   ctermbg=NONE       " Saddle Brown
hi CursorLineNr   ctermfg=228  ctermbg=NONE gui=bold " Signal Yellow

hi StatusLine     ctermfg=233  ctermbg=230  gui=bold " Invert: dark on beige
hi StatusLineNC   ctermfg=233  ctermbg=234
hi VertSplit      ctermfg=234  ctermbg=234

hi Pmenu          ctermfg=233  ctermbg=94         " Brown menu background
hi PmenuSel       ctermfg=233  ctermbg=228        " Yellow highlight
hi Visual         ctermfg=233  ctermbg=238        " Grey select
hi Search         ctermfg=233  ctermbg=228        " Yellow search highlight

" ------------------------------------------------------------------------------
" SYNTAX — Language structures, comments, constants
" ------------------------------------------------------------------------------

hi Comment        ctermfg=240                     " Dim gray
hi Constant       ctermfg=228                     " Signal yellow (standout)
hi Identifier     ctermfg=230                     " Beige (human-friendly vars)
hi Statement      ctermfg=32                      " Blue accent (keywords)
hi PreProc        ctermfg=72                      " Cyan tint (macros)
hi Type           ctermfg=94                      " Saddle brown (strong type)
hi Special        ctermfg=33                      " Blue-bright (punctuation etc.)
hi Underlined     ctermfg=32
hi Todo           ctermfg=233 ctermbg=228         " Dark on yellow
hi Error          ctermfg=15  ctermbg=88          " White on red

" ------------------------------------------------------------------------------
" FILETYPE-AGNOSTIC
" ------------------------------------------------------------------------------

hi Title          ctermfg=228 gui=bold
hi Directory      ctermfg=32  gui=bold
hi WarningMsg     ctermfg=196 gui=bold
hi ModeMsg        ctermfg=32
hi Question       ctermfg=228

" ------------------------------------------------------------------------------
" ALTGRID-SPECIFIC CLASSES
" ------------------------------------------------------------------------------

hi AltGridID        ctermfg=32                    " Blue accent (ID)
hi AltGridRoute     ctermfg=94                    " Saddle brown
hi AltGridMetadata  ctermfg=72                    " Cyan
hi AltGridDebug     ctermfg=240                   " Dim gray

