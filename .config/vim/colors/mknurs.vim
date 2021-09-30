" Vim color file
" A complete vim colorscheme. A demonstration of all highlight groups.
" Maintainer: mknurs <mikanovic@kompot.si>
" Last Change:	2021 Sep 29

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
set t_Co=16
let g:colors_name = "mknurs"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Normal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Normal: normal text
highlight Normal term=NONE cterm=NONE ctermfg=15 ctermbg=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INTERFACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor: the character under the cursor
highlight Cursor term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" lCursor: the character under the cursor when |language-mapping| is used (see 'guicursor')
highlight lCursor term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" CursorIM: like Cursor, but used when in IME mode
highlight CursorIM term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Special rows and columns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ColorColumn: used for the columns set with 'colorcolumn'
highlight ColorColumn term=NONE cterm=NONE ctermfg=bg ctermbg=9
" CursorColumn: the screen column that the cursor is in when 'cursorcolumn' is set
highlight CursorColumn term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" CursorLine: the screen line that the cursor is in when 'cursorline' is set
highlight CursorLine term=NONE cterm=NONE ctermfg=bg ctermbg=fg

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Various hidden text or non-text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Conceal: placeholder characters substituted for concealed text (see 'conceallevel')
highlight Conceal term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
" NonText: '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
highlight NonText term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
" EndOfBuffer: filler lines (~) after the last line in the buffer. By default, this is highlighted like |hl-NonText|.
highlight EndOfBuffer term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
" Folded: line used for closed folds
highlight Folded term=bold cterm=bold ctermfg=8 ctermbg=NONE
" FoldColumn: 'foldcolumn'
highlight FoldColumn term=bold cterm=bold ctermfg=8 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Directory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Directory: directory names (and other special names in listings)
highlight Directory term=NONE cterm=NONE ctermfg=9 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DiffAdd: diff mode: Added line |diff.txt|
highlight DiffAdd term=NONE cterm=NONE ctermfg=bg ctermbg=2
" DiffChange: diff mode: Changed line |diff.txt|
highlight DiffChange term=NONE cterm=NONE ctermfg=bg ctermbg=3
" DiffDelete: diff mode: Deleted line |diff.txt|
highlight DiffDelete term=NONE cterm=NONE ctermfg=bg ctermbg=1
" DiffText: diff mode: Changed text within a changed line |diff.txt|
highlight DiffText term=bold cterm=bold ctermfg=NONE ctermbg=NONE
" VertSplit: the column separating vertically split windows
highlight VertSplit term=bold cterm=bold ctermfg=2 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Msg
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ModeMsg: 'showmode' message (e.g., "-- INSERT --")
highlight ModeMsg term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" MoreMsg: |more-prompt|
highlight ModeMsg term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" WarningMsg: warning messages
highlight WarningMsg term=NONE cterm=NONE ctermfg=1 ctermbg=NONE
" ErrorMsg: error messages on the command line
highlight ErrorMsg term=bold cterm=bold ctermfg=1 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search: Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
highlight Search term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" IncSearch: 'incsearch' highlighting; also used for the text replaced with ":s///c"
highlight IncSearch term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LineNr: Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
highlight LineNr term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" LineNrAbove: Line number for when the 'relativenumber' option is set, above the cursor line.
highlight LineNrAbove term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" LineNrBelow: Line number for when the 'relativenumber' option is set, below the cursor line.
highlight LineNrBelow term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" CursorLineNr: Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
highlight CursorLineNr term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" SignColumn: column where |signs| are displayed
highlight SignColumn term=NONE cterm=NONE ctermfg=9 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matching parenthesis
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MatchParen: The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
highlight MatchParen term=underline cterm=underline ctermfg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Popup menu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pmenu: Popup menu: normal item.
highlight Pmenu term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" PmenuSel: Popup menu: selected item.
highlight PmenuSel term=NONE cterm=NONE ctermfg=fg ctermbg=bg
" PmenuSbar: Popup menu: scrollbar.
highlight PmenuSbar term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" PmenuThumb: Popup menu: Thumb of the scrollbar.
highlight PmenuThumb term=NONE cterm=NONE ctermfg=bg ctermbg=fg

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QuickFix
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QuickFixLine: Current |quickfix| item in the quickfix window.
highlight QuickFixLine term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SpecialKey
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SpecialKey: Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
highlight SpecialKey term=NONE cterm=NONE ctermfg=4 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spelling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SpellBad: Word that is not recognized by the spellchecker. |spell| This will be combined with the highlighting used otherwise.
highlight SpellBad term=underline cterm=underline ctermbg=NONE ctermbg=NONE
" SpellCap: Word that should start with a capital. |spell| This will be combined with the highlighting used otherwise.
highlight SpellCap term=underline cterm=underline ctermbg=NONE ctermbg=NONE
" SpellLocal: Word that is recognized by the spellchecker as one that is used in another region. |spell| This will be combined with the highlighting used otherwise.
highlight SpellRare term=underline cterm=underline ctermbg=NONE ctermbg=NONE
" SpellRare: Word that is recognized by the spellchecker as one that is hardly ever used. |spell| This will be combined with the highlighting used otherwise.
highlight SpellRare term=underline cterm=underline ctermbg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" StatusLine: status line of current window
highlight StatusLine term=NONE cterm=NONE ctermfg=bg ctermbg=2
" StatusLineNC: status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
highlight StatusLineNC term=NONE cterm=NONE ctermfg=bg ctermbg=10
" StatusLineTerm: status line of current window, if it is a |terminal| window.
highlight StatusLineTerm term=NONE cterm=NONE ctermfg=bg ctermbg=2
" StatusLineTermNC: status lines of not-current windows that is a |terminal| window.
highlight StatusLineTermNC term=NONE cterm=NONE ctermfg=bg ctermbg=10
" WildMenu: current match in 'wildmenu' completion
highlight WildMenu term=bold cterm=bold ctermfg=bg ctermbg=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TabLine: tab pages line, not active tab page label
highlight TabLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
" TabLineSel: tab pages line, active tab page label
highlight TabLineSel term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" TabLineFill: tab pages line, where there are no labels
highlight TabLineFill term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal: |terminal| window (see |terminal-size-color|)
highlight Terminal term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Titles and questions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Title: titles for output from ":set all", ":autocmd" etc.
highlight Title term=bold cterm=bold ctermfg=5 ctermbg=NONE
" Question: |hit-enter| prompt and yes/no questions
highlight Question term=bold cterm=bold ctermfg=5 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual: Visual mode selection
highlight Visual term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" VisualNOS: Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
highlight VisualNOS term=NONE cterm=NONE ctermfg=bg ctermbg=fg

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTAX
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comment: any comment
highlight Comment term=NONE cterm=NONE ctermfg=8 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Constant
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Constant: any constant
highlight Constant term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" String: a string constant: "this is a string"
highlight String term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Character: a character constant: 'c', '\n'
highlight Character term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Number: a number constant: 234, 0xff
highlight Number term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Boolean: a boolean constant: TRUE, false
highlight Boolean term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Float: a floating point constant: 2.3e10
highlight Float term=NONE cterm=NONE ctermfg=9 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Identifier
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Identifier: any variable name
highlight Identifier term=bold cterm=bold ctermfg=6 ctermbg=NONE
" Function: function name (also: methods for classes)
highlight Function term=bold cterm=bold ctermfg=6 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statement: any statement
highlight Statement term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Conditional: if, then, else, endif, switch, etc.
highlight Conditional term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Repeat: for, do, while, etc.
highlight Repeat term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Label: case, default, etc.
highlight Label term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Operator: "sizeof", "+", "*", etc.
highlight Operator term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Keyword: any other keyword
highlight Keyword term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Exception: try, catch, throw
highlight Exception term=NONE cterm=NONE ctermfg=3 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PreProc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PreProc: generic Preprocessor
highlight PreProc term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" Include: preprocessor #include
highlight Include term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" Define: preprocessor #define
highlight Define term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" Macro: same as Define
highlight Macro term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" PreCondit: preprocessor #if, #else, #endif, etc.
highlight PreCondit term=NONE cterm=NONE ctermfg=12 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Type
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Type: int, long, char, etc.
highlight Type term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" StorageClass: static, register, volatile, etc.
highlight StorageClass term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" Structure: struct, union, enum, etc.
highlight Structure term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" Typedef: A typedef
highlight Typedef term=NONE cterm=NONE ctermfg=2 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Special
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	Special:	any special symbol
highlight Special term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
"	SpecialChar: special character in a constant
highlight SpecialChar term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
"	Tag: you can use CTRL-] on this
highlight Tag term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
"	Delimiter:	character that needs attention
highlight Delimiter term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
"	SpecialComment:	special things inside a comment
highlight SpecialComment term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
" Debug: debugging statements
highlight Debug term=NONE cterm=NONE ctermfg=5 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Underlined
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Underlined: text that stands out, HTML links
highlight Underlined term=underline cterm=underline ctermfg=6 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore: left blank, hidden |hl-Ignore|
highlight Ignore term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Error
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Error: any erroneous construct
highlight Error term=bold cterm=bold ctermfg=1 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Todo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Todo: anything that needs extra attention; mostly the
highlight Todo term=bold cterm=bold ctermfg=3 ctermbg=NONE
