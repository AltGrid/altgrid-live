" ~/.vimrc — AltGrid Terminal Configuration
" For use in post-internet environments.
" This setup favors readability, survivability, and minimal assumptions.

" ------------------------------------------------------------------------------
" COLOR + STYLE — AltGrid default theme: monochrome green on black
" ------------------------------------------------------------------------------

set background=dark

" Prefer custom AltGrid theme if present, otherwise fall back to desert
if filereadable(expand("~/.vim/colors/altgrid.vim"))
  colorscheme altgrid
else
  colorscheme desert
endif

" Enable 24-bit color support only if terminal supports it
if has("termguicolors")
  set termguicolors
endif

" Make Normal background transparent if terminal supports it
highlight Normal ctermbg=NONE

" ------------------------------------------------------------------------------
" LINE NUMBERS — Show absolute and relative numbers
" ------------------------------------------------------------------------------

set number                 " Show absolute line numbers on the left
set relativenumber         " Show relative movement from cursor line

" ------------------------------------------------------------------------------
" INDENTATION — Always favor 4-space soft tabs
" ------------------------------------------------------------------------------

set tabstop=4              " Tab key inserts 4 spaces
set shiftwidth=4           " Indent operations (>>, <<) shift by 4
set expandtab              " Convert tabs to spaces
set smartindent            " Basic auto-indent for C-like languages

" ------------------------------------------------------------------------------
" SEARCH BEHAVIOR — Smart case matching
" ------------------------------------------------------------------------------

set ignorecase             " Case-insensitive by default
set smartcase              " Case-sensitive if uppercase letters used
set incsearch              " Show matches as you type
set hlsearch               " Highlight all matches after search

" ------------------------------------------------------------------------------
" FILE HANDLING — Avoid junk files
" ------------------------------------------------------------------------------

set nobackup               " No .bak files
set nowritebackup          " Disable .swp backups on write
set noswapfile             " Disable .swp files entirely

" Enable persistent undo if supported (will save undo history to disk)
if has("persistent_undo")
  set undofile
endif

" ------------------------------------------------------------------------------
" USER INTERFACE — Lean but helpful
" ------------------------------------------------------------------------------

set showcmd                " Show command hints during input
set showmode               " Show -- INSERT -- etc.
set ruler                  " Show cursor position at bottom
set laststatus=2           " Always show status line
set cursorline             " Highlight current line
set scrolloff=3            " Always keep 3 lines above/below cursor

" ------------------------------------------------------------------------------
" TEXT DISPLAY — Don’t split words on line wrap
" ------------------------------------------------------------------------------

set wrap                   " Wrap long lines
set linebreak              " Break lines at word boundaries

" ------------------------------------------------------------------------------
" MOUSE — Explicitly disabled (AltGrid is keyboard-only)
" ------------------------------------------------------------------------------

set mouse=                 " Disable all mouse support

" ------------------------------------------------------------------------------
" FILETYPE SUPPORT — Syntax & plugin detection
" ------------------------------------------------------------------------------

filetype plugin indent on  " Enable filetype-specific behavior
syntax on                  " Turn on syntax highlighting

" ------------------------------------------------------------------------------
" STARTUP REMINDERS — Offline reference for operators
" ------------------------------------------------------------------------------

" :w         — write (save)
" :q         — quit
" :wq        — write and quit
" u          — undo
" Ctrl + r   — redo
" /pattern   — search
" n / N      — next / previous match
" :set nu    — turn on line numbers
" :set nonu  — turn off line numbers
" :e ~/file  — open a file
" :help      — built-in Vim help (no internet required)

" ------------------------------------------------------------------------------
" ALTGRID NOTES:
" This Vim config is designed for deep-term survival and config work.
" Copy tools into ~/bin, edit logs and .stamp files, and stay steady on the rails.
" ------------------------------------------------------------------------------


