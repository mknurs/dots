" A complete neovim colorscheme. A demonstration of all highlight
" groups.
" Maintainer: mknurs <mikanovic@kompot.si>
" Last Change:	2021 Oct 05

hi clear
set background=dark
syn reset
let g:colors_name = "mknurs"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Normal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Normal: normal text
hi Normal term=NONE cterm=NONE ctermfg=15 ctermbg=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Analysis
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comment: any comment
hi Comment term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
" NonText: '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
hi NonText term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
" EndOfBuffer: filler lines (~) after the last line in the buffer. By default, this is highlighted like |hl-NonText|.
hi EndOfBuffer term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
" Whitespace: "nbsp", "space", "tab" and "trail" in 'listchars'
hi Whitespace term=NONE cterm=NONE ctermfg=8 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Literals
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Constant: any constant
hi Constant term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" String: a string constant: "this is a string"
hi String term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Character: a character constant: 'c', '\n'
hi Character term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Number: a number constant: 234, 0xff
hi Number term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Boolean: a boolean constant: TRUE, false
hi Boolean term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" Float: a floating point constant: 2.3e10
hi Float term=NONE cterm=NONE ctermfg=9 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentifiers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Identifier: any variable name
hi Identifier term=bold cterm=bold ctermfg=6 ctermbg=NONE
" Function: function name (also: methods for classes)
hi Function term=bold cterm=bold ctermfg=6 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statement: any statement
hi Statement term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Conditional: if, then, else, endif, switch, etc.
hi Conditional term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Repeat: for, do, while, etc.
hi Repeat term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Label: case, default, etc.
hi Label term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Operator: "sizeof", "+", "*", etc.
hi Operator term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Keyword: any other keyword
hi Keyword term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
" Exception: try, catch, throw
hi Exception term=NONE cterm=NONE ctermfg=3 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Metatextual Information
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PreProc: generic Preprocessor
hi PreProc term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" Include: preprocessor #include
hi Include term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" Define: preprocessor #define
hi Define term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" Macro: same as Define
hi Macro term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" PreCondit: preprocessor #if, #else, #endif, etc.
hi PreCondit term=NONE cterm=NONE ctermfg=12 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Semantics
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Type: int, long, char, etc.
hi Type term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" StorageClass: static, register, volatile, etc.
hi StorageClass term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" Structure: struct, union, enum, etc.
hi Structure term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" Typedef: A typedef
hi Typedef term=NONE cterm=NONE ctermfg=2 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edge Cases
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	Special:	any special symbol
hi Special term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
"	SpecialChar: special character in a constant
hi SpecialChar term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
" SpecialKey: Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
hi SpecialKey term=NONE cterm=NONE ctermfg=4 ctermbg=NONE
"	Tag: you can use CTRL-] on this
hi Tag term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
"	Delimiter:	character that needs attention
hi Delimiter term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
"	SpecialComment:	special things inside a comment
hi SpecialComment term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
" Debug: debugging statements
hi Debug term=NONE cterm=NONE ctermfg=5 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Help Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Underlined: text that stands out, HTML links
hi Underlined term=underline cterm=underline ctermfg=6 ctermbg=NONE
" Ignore: left blank, hidden |hl-Ignore|
hi Ignore term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
" Error: any erroneous construct
hi Error term=bold cterm=bold ctermfg=1 ctermbg=NONE
" Todo: anything that needs extra attention; mostly the
hi Todo term=bold cterm=bold ctermfg=3 ctermbg=NONE
" Hint: anything that needs extra attention; mostly the
hi Todo term=bold cterm=bold ctermfg=3 ctermbg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"\ Status Line \""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" StatusLine: status line of current window
hi StatusLine term=NONE cterm=NONE ctermfg=bg ctermbg=2
" StatusLineNC: status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
hi StatusLineNC term=NONE cterm=NONE ctermfg=bg ctermbg=8
" StatusLineTerm: status line of current window, if it is a |terminal| window.
hi StatusLineTerm term=NONE cterm=NONE ctermfg=bg ctermbg=2
" StatusLineTermNC: status lines of not-current windows that is a |terminal| window.
hi StatusLineTermNC term=NONE cterm=NONE ctermfg=bg ctermbg=8

"\ Separators \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VertSplit: the column separating vertically split windows
hi VertSplit term=bold cterm=bold ctermfg=2 ctermbg=NONE
" TabLine: tab pages line, not active tab page label
hi TabLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
" TabLineFill: tab pages line, where there are no labels
hi TabLineFill term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
" TabLineSel: tab pages line, active tab page label
hi TabLineSel term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" Title: titles for output from ":set all", ":autocmd" etc.
hi Title term=bold cterm=bold ctermfg=5 ctermbg=NONE

"\ Conditional Line Highlighting \""""""""""""""""""""""""""""""""""""""
" Conceal: placeholder characters substituted for concealed text (see 'conceallevel')
hi Conceal term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
" CursorLine: the screen line that the cursor is in when 'cursorline' is set
hi CursorLine term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" CursorLineNr: Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
hi CursorLineNr term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" LineNr: Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
hi LineNr term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
" QuickFixLine: Current |quickfix| item in the quickfix window.
hi QuickFixLine term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" Visual: Visual mode selection
hi Visual term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" VisualNOS: Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
hi VisualNOS term=NONE cterm=NONE ctermfg=bg ctermbg=fg

"\ Popup Menu \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pmenu: Popup menu: normal item.
hi Pmenu term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" PmenuSbar: Popup menu: scrollbar.
hi PmenuSbar term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" PmenuSel: Popup menu: selected item.
hi PmenuSel term=NONE cterm=NONE ctermfg=fg ctermbg=bg
" PmenuThumb: Popup menu: Thumb of the scrollbar.
hi PmenuThumb term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" WildMenu: current match in 'wildmenu' completion
hi WildMenu term=bold cterm=bold ctermfg=bg ctermbg=2

"\ Folds \""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FoldColumn: 'foldcolumn'
hi FoldColumn term=bold cterm=bold ctermfg=8 ctermbg=NONE
" Folded: line used for closed folds
hi Folded term=bold cterm=bold ctermfg=8 ctermbg=NONE

"\ Diffs \""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DiffAdd: diff mode: Added line |diff.txt|
hi DiffAdd term=NONE cterm=NONE ctermfg=bg ctermbg=2
" DiffChange: diff mode: Changed line |diff.txt|
hi DiffChange term=NONE cterm=NONE ctermfg=bg ctermbg=3
" DiffDelete: diff mode: Deleted line |diff.txt|
hi DiffDelete term=NONE cterm=NONE ctermfg=bg ctermbg=1
" DiffText: diff mode: Changed text within a changed line |diff.txt|
hi DiffText term=bold cterm=bold ctermfg=NONE ctermbg=NONE

"\ Searching \""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IncSearch: 'incsearch' highlighting; also used for the text replaced with ":s///c"
hi IncSearch term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" MatchParen: The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
hi MatchParen term=underline cterm=underline ctermfg=NONE ctermbg=NONE
" Search: Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
hi Search term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" Substitute: :substitute replacement text highlighting
hi Substitute term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE

"\ Spelling \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SpellBad: Word that is not recognized by the spellchecker. |spell| This will be combined with the highlighting used otherwise.
hi SpellBad term=underline cterm=underline ctermbg=NONE ctermbg=NONE
" SpellCap: Word that should start with a capital. |spell| This will be combined with the highlighting used otherwise.
hi SpellCap term=underline cterm=underline ctermbg=NONE ctermbg=NONE
" SpellLocal: Word that is recognized by the spellchecker as one that is used in another region. |spell| This will be combined with the highlighting used otherwise.
hi SpellRare term=underline cterm=underline ctermbg=NONE ctermbg=NONE
" SpellRare: Word that is recognized by the spellchecker as one that is hardly ever used. |spell| This will be combined with the highlighting used otherwise.
hi SpellRare term=underline cterm=underline ctermbg=NONE ctermbg=NONE

"\ Conditional Column Highlighting \""""""""""""""""""""""""""""""""""""
" ColorColumn: used for the columns set with 'colorcolumn'
hi ColorColumn term=underline cterm=underline ctermfg=9 ctermbg=NONE
" SignColumn: column where |signs| are displayed
hi SignColumn term=NONE cterm=NONE ctermfg=9 ctermbg=NONE

"\ Messages \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ErrorMsg: error messages on the command line
hi ErrorMsg term=bold cterm=bold ctermfg=1 ctermbg=NONE
" ModeMsg: 'showmode' message (e.g., "-- INSERT --")
hi ModeMsg term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
" WarningMsg: warning messages
hi WarningMsg term=NONE cterm=NONE ctermfg=1 ctermbg=NONE
" Question: |hit-enter| prompt and yes/no questions
hi Question term=bold cterm=bold ctermfg=5 ctermbg=NONE

"\ Cursor \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor: the character under the cursor
hi Cursor term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" CursorIM: like Cursor, but used when in IME mode
hi CursorIM term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" CursorColumn: the screen column that the cursor is in when 'cursorcolumn' is set
hi CursorColumn term=NONE cterm=NONE ctermfg=bg ctermbg=fg
" TermCursor: cursor in a focused terminal
hi TermCursor term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
" TermCursorNC: cursor in an unfocused terminal
hi TermCursorNC term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE

"\ Misc \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Directory: directory names (and other special names in listings)
hi Directory term=NONE cterm=NONE ctermfg=9 ctermbg=NONE
