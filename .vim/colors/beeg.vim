" Holy Moly Colors

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "holymoly"

" Normal Text
hi Normal         ctermfg=231  ctermbg=NONE cterm=bold

" Nonexistent Characters Filler
hi NonText        ctermfg=231  ctermbg=NONE cterm=bold

" Syntax - Comment Group
hi Comment        ctermfg=66   ctermbg=NONE cterm=bold

" Syntax - Constant Group
hi Constant       ctermfg=163  ctermbg=NONE cterm=bold
hi String         ctermfg=29   ctermbg=NONE cterm=bold
hi Character      ctermfg=163  ctermbg=NONE cterm=bold
hi Number         ctermfg=163  ctermbg=NONE cterm=bold
hi Boolean        ctermfg=163  ctermbg=NONE cterm=bold
hi Float          ctermfg=163  ctermbg=NONE cterm=bold

" Syntax - Identifier Group
hi Identifier     ctermfg=231  ctermbg=NONE cterm=bold
hi Function       ctermfg=49   ctermbg=NONE cterm=bold

" Syntax - Statement Group
hi Statement      ctermfg=197  ctermbg=NONE cterm=bold
hi Conditional    ctermfg=197  ctermbg=NONE cterm=bold
hi Repeat         ctermfg=197  ctermbg=NONE cterm=bold
hi Label          ctermfg=197  ctermbg=NONE cterm=bold
hi Operator       ctermfg=197  ctermbg=NONE cterm=bold
hi Keyword        ctermfg=197  ctermbg=NONE cterm=bold
hi Exception      ctermfg=197  ctermbg=NONE cterm=bold

" Syntax - Preprocessor Group
hi PreProc        ctermfg=227  ctermbg=NONE cterm=bold
hi Include        ctermfg=227  ctermbg=NONE cterm=bold
hi Define         ctermfg=227  ctermbg=NONE cterm=bold
hi Macro          ctermfg=227  ctermbg=NONE cterm=bold
hi PreConduit     ctermfg=227  ctermbg=NONE cterm=bold

" Syntax - Type Group
hi Type           ctermfg=51   ctermbg=NONE cterm=bold
hi StorageClass   ctermfg=51   ctermbg=NONE cterm=bold
hi Structure      ctermfg=51   ctermbg=NONE cterm=bold
hi Typedef        ctermfg=51   ctermbg=NONE cterm=bold

" Syntax - Special Group
hi Special        ctermfg=224  ctermbg=NONE cterm=bold
hi SpecialChar    ctermfg=224  ctermbg=NONE cterm=bold
hi Tag            ctermfg=224  ctermbg=NONE cterm=bold
hi Delimiter      ctermfg=224  ctermbg=NONE cterm=bold
hi SpecialComment ctermfg=224  ctermbg=NONE cterm=bold

" Syntax - Underlined
hi Underlined     ctermfg=27   ctermbg=NONE cterm=bold,underline

" Syntax - Ignore
hi Ignore         ctermfg=None ctermbg=NONE cterm=bold

" Syntax - Error
hi Error          ctermfg=16   ctermbg=160  cterm=bold

" Syntax - TODO
hi Todo           ctermfg=16   ctermbg=220  cterm=bold

" Cursor
hi Cursor         ctermfg=16   ctermbg=161  cterm=bold
hi CursorColumn   ctermfg=NONE ctermbg=NONE cterm=bold
hi CursorLine     ctermfg=NONE ctermbg=NONE cterm=bold

" Directory
hi Directory      ctermfg=27   ctermbg=NONE cterm=bold

" Search
hi IncSearch      ctermfg=16   ctermbg=231  cterm=bold
hi Search         ctermfg=16   ctermbg=51   cterm=bold

" Diff
hi DiffAdd        ctermfg=10   ctermbg=NONE cterm=bold
hi DiffChange     ctermfg=190  ctermbg=NONE cterm=bold
hi DiffDelete     ctermfg=160  ctermbg=NONE cterm=bold
hi DiffText       ctermfg=16   ctermbg=190  cterm=bold

" Visual Selection
hi Visual         ctermfg=16   ctermbg=66   cterm=bold

" WildMenu Current Selection
hi WildMenu       ctermfg=16   ctermbg=51   cterm=bold

" Line Numbers
hi CursorLineNr   ctermfg=66   ctermbg=NONE cterm=bold 
hi LineNr         ctermfg=66   ctermbg=NONE cterm=bold

" Status Line
hi StatusLine     ctermfg=231  ctermbg=NONE cterm=bold
hi StatusLineNC   ctermfg=250  ctermbg=NONE cterm=bold

" Tab Line
hi TabLine        ctermfg=231  ctermbg=NONE cterm=bold
hi TabLineFill    ctermfg=NONE ctermbg=NONE cterm=bold
hi TabLineSel     ctermfg=16   ctermbg=231  cterm=bold

" Vertical Split Column
hi VertSplit      ctermfg=NONE ctermbg=NONE cterm=bold

" Sign Column for Debugger
hi SignColumn     ctermfg=16   ctermbg=190  cterm=bold

" Color Column :colorcolumn
hi ColorColumn    ctermfg=NONE ctermbg=NONE cterm=bold

" Folding (hide part of file)
hi Folded         ctermfg=231  ctermbg=NONE cterm=bold

" :map Output
hi SpecialKey     ctermfg=224  ctermbg=NONE cterm=bold

" Matching Paren
hi MatchParen     ctermfg=51   ctermbg=NONE cterm=bold

" Popup Menu - Normal Item
hi Pmenu          ctermfg=231  ctermbg=NONE cterm=bold
hi PmenuSel       ctermfg=16   ctermbg=51   cterm=bold
hi PmenuSbar      ctermfg=NONE ctermbg=NONE cterm=bold
hi PmenuThumb     ctermfg=NONE ctermbg=NONE cterm=bold

" Vim Messages
hi ModeMsg        ctermfg=231  ctermbg=NONE cterm=bold
hi MoreMsg        ctermfg=231  ctermbg=NONE cterm=bold
hi Title          ctermfg=231  ctermbg=NONE cterm=bold
hi WarningMsg     ctermfg=16   ctermbg=190  cterm=bold
hi ErrorMsg       ctermfg=16   ctermbg=160  cterm=bold

" Spelling
hi SpellBad       ctermfg=16   ctermbg=190  cterm=bold
hi SpellCap       ctermfg=16   ctermbg=190  cterm=bold
hi SpellLocal     ctermfg=231  ctermbg=NONE cterm=bold
hi SpellRare      ctermfg=231  ctermbg=NONE cterm=bold
