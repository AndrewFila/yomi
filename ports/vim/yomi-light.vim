" yomi-light.vim — light variant
" Maintainer: yomi
" -----------------------------------------------------------

set background=light
hi clear
if exists('syntax_on') | syntax reset | endif
let g:colors_name = 'yomi-light'

" Palette
let s:bg0   = '#F3EBD8'
let s:bg1   = '#E8DEC8'
let s:bg2   = '#D4C9B0'
let s:fg0   = '#282828'
let s:fg1   = '#5C5248'
let s:cursor = '#A33030'

let s:black   = '#282828'
let s:red     = '#A33030'
let s:green   = '#3A7040'
let s:yellow  = '#8A6518'
let s:blue    = '#2A5890'
let s:magenta = '#8A2A48'
let s:cyan    = '#307880'
let s:white   = '#D4C9B0'

let s:brblack   = '#8C8078'
let s:brred     = '#C03838'
let s:brgreen   = '#4A8850'
let s:bryellow  = '#A07820'
let s:brblue    = '#3A68A8'
let s:brmagenta = '#A83860'
let s:brcyan    = '#3A9098'
let s:brwhite   = '#F9F5EF'

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
call s:hi('PmenuSel',     s:brwhite,  s:blue,  '')
call s:hi('PmenuSbar',    '',         s:bg2,   '')
call s:hi('PmenuThumb',   '',         s:brblack, '')
call s:hi('TabLine',      s:fg1,      s:bg1,   '')
call s:hi('TabLineSel',   s:fg0,      s:bg0,   'bold')
call s:hi('TabLineFill',  '',         s:bg1,   '')
call s:hi('Visual',       '',         s:bg2,   '')
call s:hi('Search',       s:brwhite,  s:yellow, '')
call s:hi('IncSearch',    s:brwhite,  s:red,    '')
call s:hi('MatchParen',   s:red,      '',       'bold')
call s:hi('WildMenu',     s:brwhite,  s:blue,  '')
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
call s:hi('DiffText',   s:brwhite, s:yellow, '')

" Git (vim-gitgutter / gitsigns)
call s:hi('GitGutterAdd',    s:green,  '', '')
call s:hi('GitGutterChange', s:yellow, '', '')
call s:hi('GitGutterDelete', s:red,    '', '')
