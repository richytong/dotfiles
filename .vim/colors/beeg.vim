" Holy Moly Colors

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "beeg"

" Main Text Color    195
" String Color       228
" Number/Boolean     163
" Args, Special      210
" Globals            93

" Normal Text
hi Normal         ctermfg=195  ctermbg=NONE cterm=NONE

" Nonexistent Characters Filler
hi NonText        ctermfg=195  ctermbg=NONE cterm=NONE

" Syntax - Comment Group
hi Comment        ctermfg=66   ctermbg=NONE cterm=NONE

" Syntax - Constant Group
hi Constant       ctermfg=93   ctermbg=NONE cterm=NONE
hi String         ctermfg=228  ctermbg=NONE cterm=NONE
hi Character      ctermfg=163  ctermbg=NONE cterm=NONE
hi Number         ctermfg=163  ctermbg=NONE cterm=NONE
hi Boolean        ctermfg=163  ctermbg=NONE cterm=NONE
hi Float          ctermfg=163  ctermbg=NONE cterm=NONE

" Syntax - Identifier Group
hi Identifier     ctermfg=195  ctermbg=NONE cterm=NONE
hi Function       ctermfg=49   ctermbg=NONE cterm=NONE

" Syntax - Statement Group
hi Statement      ctermfg=75   ctermbg=NONE cterm=NONE
hi Conditional    ctermfg=75   ctermbg=NONE cterm=NONE
hi Repeat         ctermfg=75   ctermbg=NONE cterm=NONE
hi Label          ctermfg=75   ctermbg=NONE cterm=NONE
hi Operator       ctermfg=75   ctermbg=NONE cterm=NONE
hi Keyword        ctermfg=75   ctermbg=NONE cterm=NONE
hi Exception      ctermfg=75   ctermbg=NONE cterm=NONE

" Syntax - Preprocessor Group
hi PreProc        ctermfg=210  ctermbg=NONE cterm=NONE
hi Include        ctermfg=210  ctermbg=NONE cterm=NONE
hi Define         ctermfg=210  ctermbg=NONE cterm=NONE
hi Macro          ctermfg=210  ctermbg=NONE cterm=NONE
hi PreConduit     ctermfg=210  ctermbg=NONE cterm=NONE

" Syntax - Type Group
hi Type           ctermfg=51   ctermbg=NONE cterm=NONE
hi StorageClass   ctermfg=51   ctermbg=NONE cterm=NONE
hi Structure      ctermfg=51   ctermbg=NONE cterm=NONE
hi Typedef        ctermfg=51   ctermbg=NONE cterm=NONE

" Syntax - Special Group
hi Special        ctermfg=195  ctermbg=NONE cterm=NONE
hi SpecialChar    ctermfg=195  ctermbg=NONE cterm=NONE
hi Tag            ctermfg=195  ctermbg=NONE cterm=NONE
hi Delimiter      ctermfg=195  ctermbg=NONE cterm=NONE
hi SpecialComment ctermfg=195  ctermbg=NONE cterm=NONE

" Syntax - Underlined
hi Underlined     ctermfg=93   ctermbg=NONE cterm=underline

" Syntax - Ignore
hi Ignore         ctermfg=None ctermbg=NONE cterm=NONE

" Syntax - Error
hi Error          ctermfg=16   ctermbg=160  cterm=NONE

" Syntax - TODO
hi Todo           ctermfg=16   ctermbg=220  cterm=NONE

" Cursor
hi Cursor         ctermfg=16   ctermbg=231  cterm=NONE
hi CursorColumn   ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorLine     ctermfg=NONE ctermbg=NONE cterm=NONE

" Directory
hi Directory      ctermfg=93   ctermbg=NONE cterm=NONE

" Search
hi IncSearch      ctermfg=16   ctermbg=228  cterm=bold
hi Search         ctermfg=16   ctermbg=51   cterm=bold

" Diff
hi DiffAdd        ctermfg=10   ctermbg=NONE cterm=NONE
hi DiffChange     ctermfg=220  ctermbg=NONE cterm=NONE
hi DiffDelete     ctermfg=160  ctermbg=NONE cterm=NONE
hi DiffText       ctermfg=16   ctermbg=220  cterm=NONE

" Visual Selection
hi Visual         ctermfg=16   ctermbg=66   cterm=NONE

" WildMenu Current Selection
hi WildMenu       ctermfg=16   ctermbg=51   cterm=NONE

" Line Numbers
hi CursorLineNr   ctermfg=66   ctermbg=NONE cterm=NONE
hi LineNr         ctermfg=66   ctermbg=NONE cterm=NONE

" Status Line is reversed
hi StatusLine     ctermfg=66   ctermbg=16   cterm=bold
hi StatusLineNC   ctermfg=66   ctermbg=16   cterm=bold

" Tab Line
hi TabLine        ctermfg=195  ctermbg=NONE cterm=NONE
hi TabLineFill    ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLineSel     ctermfg=16   ctermbg=195  cterm=NONE

" Vertical Split Column
hi VertSplit      ctermfg=NONE ctermbg=NONE cterm=NONE

" Sign Column for Debugger
hi SignColumn     ctermfg=16   ctermbg=220 cterm=NONE

" Color Column :colorcolumn
hi ColorColumn    ctermfg=NONE ctermbg=NONE cterm=NONE

" Folding (hide part of file)
hi Folded         ctermfg=195  ctermbg=NONE cterm=NONE

" :map Output
hi SpecialKey     ctermfg=195  ctermbg=NONE cterm=NONE

" Matching Paren
hi MatchParen     ctermfg=51   ctermbg=NONE cterm=underline

" Popup Menu - Normal Item
hi Pmenu          ctermfg=195  ctermbg=NONE cterm=NONE
hi PmenuSel       ctermfg=16   ctermbg=51   cterm=NONE
hi PmenuSbar      ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuThumb     ctermfg=NONE ctermbg=NONE cterm=NONE

" Vim Messages
hi ModeMsg        ctermfg=195  ctermbg=NONE cterm=NONE
hi MoreMsg        ctermfg=195  ctermbg=NONE cterm=NONE
hi Title          ctermfg=195  ctermbg=NONE cterm=NONE
hi WarningMsg     ctermfg=16   ctermbg=220  cterm=NONE
hi ErrorMsg       ctermfg=16   ctermbg=160  cterm=NONE

" Spelling
hi SpellBad       ctermfg=16   ctermbg=220  cterm=NONE
hi SpellCap       ctermfg=16   ctermbg=220  cterm=NONE
hi SpellLocal     ctermfg=195  ctermbg=NONE cterm=NONE
hi SpellRare      ctermfg=195  ctermbg=NONE cterm=NONE

" Links
hi! link TermCursor Cursor
hi! link lCursor    Cursor
