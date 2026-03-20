" yomi.vim — dark variant
" Maintainer: https://github.com/AndrewFila
" -----------------------------------------------------------

set background=dark
hi clear
if exists('syntax_on') | syntax reset | endif
let g:colors_name = 'yomi'

" Palette
let s:bg0   = '#282828'
let s:bg1   = '#3C3836'
let s:bg2   = '#665C54'
let s:fg0   = '#EDE0C4'
let s:fg1   = '#D5C4A1'
let s:cursor = '#E05858'

let s:black   = '#282828'
let s:red     = '#BF4040'
let s:green   = '#4E9050'
let s:yellow  = '#CCA030'
let s:blue    = '#4A78B8'
let s:magenta = '#BE5070'
let s:cyan    = '#62BABF'
let s:white   = '#D5C4A1'

let s:brblack   = '#665C54'
let s:brred     = '#E05858'
let s:brgreen   = '#78BE70'
let s:bryellow  = '#EAD060'
let s:brblue    = '#7AAAD8'
let s:brmagenta = '#E080A0'
let s:brcyan    = '#90D8E0'
let s:brwhite   = '#FBF1C7'

" Helper
function! s:hi(group, fg, bg, attr)
  if !empty(a:fg)   | exec 'hi ' . a:group . ' guifg=' . a:fg   | endif
  if !empty(a:bg)   | exec 'hi ' . a:group . ' guibg=' . a:bg   | endif
  if !empty(a:attr) | exec 'hi ' . a:group . ' gui='   . a:attr | endif
endfunction

" UI
call s:hi('Normal',       s:fg0,      s:bg0,   '')
call s:hi('NormalFloat',  s:fg0,      s:bg1,   '')
call s:hi('LineNr',       s:brblack,  s:bg0,   '')
call s:hi('CursorLineNr', s:fg1,      s:bg1,   'bold')
call s:hi('CursorLine',   '',         s:bg1,   'none')
call s:hi('ColorColumn',  '',         s:bg1,   'none')
call s:hi('SignColumn',   s:brblack,  s:bg0,   '')
call s:hi('VertSplit',    s:bg2,      s:bg0,   '')
call s:hi('StatusLine',   s:fg0,      s:bg2,   '')
call s:hi('StatusLineNC', s:fg1,      s:bg1,   '')
call s:hi('Pmenu',        s:fg0,      s:bg1,   '')
call s:hi('PmenuSel',     s:bg0,      s:blue,  '')
call s:hi('PmenuSbar',    '',         s:bg2,   '')
call s:hi('PmenuThumb',   '',         s:brblack, '')
call s:hi('TabLine',      s:fg1,      s:bg1,   '')
call s:hi('TabLineSel',   s:fg0,      s:bg0,   'bold')
call s:hi('TabLineFill',  '',         s:bg1,   '')
call s:hi('Visual',       '',         s:bg2,   '')
call s:hi('Search',       s:bg0,      s:yellow, '')
call s:hi('IncSearch',    s:bg0,      s:brred,  '')
call s:hi('MatchParen',   s:brred,    '',       'bold')
call s:hi('WildMenu',     s:bg0,      s:blue,  '')
call s:hi('Folded',       s:brblack,  s:bg1,   'italic')
call s:hi('FoldColumn',   s:brblack,  s:bg0,   '')
call s:hi('EndOfBuffer',  s:brblack,  '',      '')
call s:hi('NonText',      s:brblack,  '',      '')
call s:hi('SpecialKey',   s:brblack,  '',      '')

" Syntax
call s:hi('Comment',      s:brblack,  '', 'italic')
call s:hi('Constant',     s:brred,    '', '')
call s:hi('String',       s:brgreen,  '', '')
call s:hi('Number',       s:brred,    '', '')
call s:hi('Boolean',      s:brred,    '', '')
call s:hi('Float',        s:brred,    '', '')
call s:hi('Identifier',   s:fg0,      '', '')
call s:hi('Function',     s:brblue,   '', '')
call s:hi('Statement',    s:red,      '', '')
call s:hi('Keyword',      s:red,      '', 'bold')
call s:hi('Operator',     s:cyan,     '', '')
call s:hi('PreProc',      s:magenta,  '', '')
call s:hi('Include',      s:blue,     '', '')
call s:hi('Type',         s:yellow,   '', '')
call s:hi('StorageClass', s:yellow,   '', 'bold')
call s:hi('Structure',    s:yellow,   '', '')
call s:hi('Typedef',      s:yellow,   '', '')
call s:hi('Special',      s:cyan,     '', '')
call s:hi('Underlined',   s:blue,     '', 'underline')
call s:hi('Error',        s:brred,    '', 'bold')
call s:hi('Todo',         s:bryellow, '', 'bold')

" Diagnostics
call s:hi('DiagnosticError', s:red,     '', '')
call s:hi('DiagnosticWarn',  s:yellow,  '', '')
call s:hi('DiagnosticInfo',  s:blue,    '', '')
call s:hi('DiagnosticHint',  s:cyan,    '', '')

" Diff
call s:hi('DiffAdd',    s:green,  s:bg0, '')
call s:hi('DiffChange', s:yellow, s:bg0, '')
call s:hi('DiffDelete', s:red,    s:bg0, '')
call s:hi('DiffText',   s:bg0,    s:yellow, '')

" Git (vim-gitgutter / gitsigns)
call s:hi('GitGutterAdd',    s:green,  '', '')
call s:hi('GitGutterChange', s:yellow, '', '')
call s:hi('GitGutterDelete', s:red,    '', '')
