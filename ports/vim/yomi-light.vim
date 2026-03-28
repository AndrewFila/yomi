" yomi-light.vim — light variant
" Maintainer: https://github.com/AndrewFila
" -----------------------------------------------------------

set background=light
hi clear
if exists('syntax_on') | syntax reset | endif
let g:colors_name = 'yomi-light'

" Palette
let s:bg0   = '#E4E8F0'
let s:bg1   = '#D4D8E4'
let s:bg2   = '#BFC4D4'
let s:fg0   = '#1A1A22'
let s:fg1   = '#4A5260'
let s:cursor = '#F11A39'

let s:black   = '#1A1A22'
let s:red     = '#91000F'
let s:green   = '#006A4C'
let s:yellow  = '#AA8D36'
let s:blue    = '#004C89'
let s:magenta = '#D179A6'
let s:cyan    = '#2584BF'
let s:white   = '#9AA0AE'

let s:brblack   = '#4A5260'
let s:brred     = '#F11A39'
let s:brgreen   = '#2DAC67'
let s:bryellow  = '#E1BA21'
let s:brblue    = '#2280CF'
let s:brmagenta = '#DEAAC8'
let s:brcyan    = '#71A9D5'
let s:brwhite   = '#E0E4EC'

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
call s:hi('Constant',     s:red,      '', '')
call s:hi('String',       s:green,    '', '')
call s:hi('Number',       s:red,      '', '')
call s:hi('Boolean',      s:red,      '', '')
call s:hi('Float',        s:red,      '', '')
call s:hi('Identifier',   s:fg0,      '', '')
call s:hi('Function',     s:blue,     '', '')
call s:hi('Statement',    s:red,      '', '')
call s:hi('Keyword',      s:red,      '', 'bold')
call s:hi('Operator',     s:cyan,     '', '')
call s:hi('PreProc',      s:red,      '', '')
call s:hi('Include',      s:blue,     '', '')
call s:hi('Type',         s:yellow,   '', '')
call s:hi('StorageClass', s:yellow,   '', 'bold')
call s:hi('Structure',    s:yellow,   '', '')
call s:hi('Typedef',      s:yellow,   '', '')
call s:hi('Special',      s:cyan,     '', '')
call s:hi('Underlined',   s:blue,     '', 'underline')
call s:hi('Error',        s:red,      '', 'bold')
call s:hi('Todo',         s:yellow,   '', 'bold')

" Diagnostics
call s:hi('DiagnosticError', s:red,    '', '')
call s:hi('DiagnosticWarn',  s:yellow, '', '')
call s:hi('DiagnosticInfo',  s:blue,   '', '')
call s:hi('DiagnosticHint',  s:cyan,   '', '')

" Diff
call s:hi('DiffAdd',    s:green,  s:bg0, '')
call s:hi('DiffChange', s:yellow, s:bg0, '')
call s:hi('DiffDelete', s:red,    s:bg0, '')
call s:hi('DiffText',   s:brwhite, s:yellow, '')

" Git (vim-gitgutter / gitsigns)
call s:hi('GitGutterAdd',    s:green,  '', '')
call s:hi('GitGutterChange', s:yellow, '', '')
call s:hi('GitGutterDelete', s:red,    '', '')
