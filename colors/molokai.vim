" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

"
" Support for 256-color terminal
"
if &t_Co > 255
    hi cComment         ctermfg=241

    hi cConstant       ctermfg=9                 cterm=bold
    " hi cString         ctermfg=39
    hi cString         ctermfg=9
    " hi cFloat          ctermfg=208
    " hi cNumber         ctermfg=208
    hi cFloat          ctermfg=9
    hi cNumber         ctermfg=9

    hi cConditional    ctermfg=220               cterm=bold
    hi cLabel          ctermfg=220               cterm=none
    hi cUserLabel      ctermfg=220               cterm=none
    hi cRepeat         ctermfg=220               cterm=bold
    hi cStatement      ctermfg=220               cterm=bold

    hi cInclude        ctermfg=162
    hi cDefine         ctermfg=162
    hi cPreProc        ctermfg=162
    hi cPreCondit      ctermfg=208               cterm=bold

    " static const
    hi cStorageClass   ctermfg=34
    hi cStructure      ctermfg=34
    hi cTypedef        ctermfg=34
    hi cType           ctermfg=34                cterm=bold
    " sizeof
    hi cOperator       ctermfg=34                cterm=bold

    hi cFormat         ctermfg=135
    hi cSpecial        ctermfg=135               cterm=bold

    hi Normal          ctermfg=255  ctermbg=233
    hi NormalNC        ctermfg=241  ctermbg=0

    hi VisualNOS                    ctermbg=236
    hi Visual          ctermfg=0    ctermbg=15
    hi CursorLine                   ctermbg=236  cterm=none

    hi CursorLineNr    ctermfg=15   ctermbg=233  cterm=none
    hi LineNr          ctermfg=241  ctermbg=233

    hi Search          ctermfg=0    ctermbg=208  cterm=NONE
    hi StatusLine      ctermfg=255  ctermbg=233
    hi StatusLineNC    ctermfg=238  ctermbg=255

    hi DiffAdd         ctermfg=15   ctermbg=27
    hi DiffChange      ctermfg=15   ctermbg=126
    hi DiffDelete      ctermfg=15   ctermbg=37
    hi DiffText                     ctermbg=102  cterm=bold




    hi Boolean         ctermfg=135
    hi Character       ctermfg=144
    hi Number          ctermfg=135
    hi String          ctermfg=144
    hi Conditional     ctermfg=161               cterm=bold
    hi Constant        ctermfg=135               cterm=bold
    hi Cursor          ctermfg=16   ctermbg=253
    hi Debug           ctermfg=225               cterm=bold
    hi Define          ctermfg=81
    hi Delimiter       ctermfg=241

    hi Directory       ctermfg=118               cterm=bold
    hi Error           ctermfg=219  ctermbg=89
    " hi ErrorMsg        ctermfg=199  ctermbg=16   cterm=bold
    hi ErrorMsg        ctermfg=160  ctermbg=16   cterm=bold
    hi Exception       ctermfg=118               cterm=bold
    hi Float           ctermfg=135
    hi FoldColumn      ctermfg=67   ctermbg=16
    hi Folded          ctermfg=67   ctermbg=16
    hi Function        ctermfg=118
    hi Identifier      ctermfg=208               cterm=none
    hi Ignore          ctermfg=244  ctermbg=232
    hi IncSearch       ctermfg=193  ctermbg=16

    hi Keyword         ctermfg=161               cterm=bold
    hi Label           ctermfg=229               cterm=none
    hi Macro           ctermfg=193
    hi SpecialKey      ctermfg=81

    hi MatchParen      ctermfg=233  ctermbg=208  cterm=bold
    hi ModeMsg         ctermfg=229
    hi MoreMsg         ctermfg=229
    hi Operator        ctermfg=161

    " complete menu
    hi Pmenu           ctermfg=81   ctermbg=16
    hi PmenuSel        ctermfg=255  ctermbg=242
    hi PmenuSbar                    ctermbg=232
    hi PmenuThumb      ctermfg=81

    hi PreCondit       ctermfg=118               cterm=bold
    hi PreProc         ctermfg=118
    hi Question        ctermfg=81
    hi Repeat          ctermfg=161               cterm=bold

    " marks column
    hi SignColumn      ctermfg=118  ctermbg=236
    hi SpecialChar     ctermfg=161               cterm=bold
    hi SpecialComment  ctermfg=245               cterm=bold
    hi Special         ctermfg=81
    if has("spell")
        hi SpellBad                 ctermbg=52
        hi SpellCap                 ctermbg=17
        hi SpellLocal               ctermbg=17
        hi SpellRare  ctermfg=none  ctermbg=none cterm=reverse
    endif
    hi Statement       ctermfg=161               cterm=bold
    hi StorageClass    ctermfg=208
    hi Structure       ctermfg=81
    hi Tag             ctermfg=161
    hi Title           ctermfg=166
    hi Todo            ctermfg=231  ctermbg=232  cterm=bold

    hi Typedef         ctermfg=81
    hi Type            ctermfg=81                cterm=none
    hi Underlined      ctermfg=244               cterm=underline

    hi VertSplit       ctermfg=244  ctermbg=232  cterm=bold
    hi WarningMsg      ctermfg=231  ctermbg=238  cterm=bold
    hi WildMenu        ctermfg=81   ctermbg=16

    hi Comment         ctermfg=59
    hi CursorColumn                 ctermbg=236
    hi ColorColumn                  ctermbg=red
    " hi LineNr          ctermfg=250 ctermbg=236
    hi NonText         ctermfg=59

    hi SpecialKey      ctermfg=59
endif

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
