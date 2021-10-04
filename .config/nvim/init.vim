"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 important
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" compatible, cp: behave very Vi compatible (not advisable)
" set nocp
" cpoptions, cpo: list of flags to specify Vi compatibility
" set cpo=
" insertmode, im: use Insert mode as the default mode
" set noim
" paste: paste mode, insert typed text literally
" set paste
" pastetoggle, pt: key sequence to toggle paste mode
" set pt=
" runtimepath, rtp: list of directories used for runtime files and plugins
" set rtp=
" packpath, pp: list of directories used for plugin packages
" set pp=
" helpfile, hf: name of the main help file
" set hf=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2 moving around, searching and patterns
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" whichwrap, ww: list of flags specifying which commands wrap to another line
" set ww=b,s,<,>,[,]
" startofline, sol: many jump commands move the cursor to the first non-blank character of a line
" set sol
" paragraphs, para: nroff macro names that separate paragraphs
" set para=
" sections, sect: nroff macro names that separate sections
" set sect=
" path, pa: list of directory names used for file searching
" (global or local to buffer)
" set pa=
" cdpath, cd: list of directory names used for :cd
" set cd=
" autochdir, acd: change to directory of file in buffer
" set acd
" wrapscan, ws: search commands wrap around the end of the buffer
" set ws
" incsearch, is: show match for partly typed search command
set is
" magic: change the way backslashes are used in search patterns
" set magic
" regexpengine, re: select the default regexp engine used
" set re=
" ignorecase, ic: ignore case when using a search pattern
set ic
" smartcase, scs: override 'ignorecase' when pattern has upper case characters
set scs
" casemap, cmp: what method to use for changing case of letters
" set cmp=
" maxmempattern, mmp: maximum amount of memory in Kbyte used for pattern matching
" set mmp=
" define, def: pattern for a macro definition line
" (global or local to buffer)
" set def=
" include, inc: pattern for an include-file line (local to buffer)
" set inc=
" includeexpr, inex: expression used to transform an include line to a file name
" (local to buffer)
" set inex=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 3 tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbsearch, tbs: use binary searching in tags files
" set tbs
" taglength, tl: number of significant characters in a tag name or zero
" set tl=
" tags: list of file names to search for tags
" (global or local to buffer)
" set tag=
" tagcase, tc: how to handle case when searching in tags files: "followic" to follow 'ignorecase', "ignore" or "match"
" (global or local to buffer)
" set tc=
" tagrelative, tr: file names in a tags file are relative to the tags file
" set tr
" tagstack, tgst: a :tag command will use the tagstack
" set tgst
" showfulltag, sft: when completing tags in Insert mode show more info
" set nosft
" tagfunc, tfu: a function to be used to perform tag searches
" (local to buffer)
" set tfu=
" cscopeprg, csprg: command for executing cscope
" set csprg=
" cscopetag, cst: use cscope for tag commands
" set nocst
" cscopetagorder, csto: 0 or 1; the order in which ":cstag" performs a search
" set csto=0
" cscopeverbose, csverb: give messages when adding a cscope database
" set nocsverb
" cscopepathcomp, cspc: how many components of the path to show
" set cspc=0
" cscopequickfix, csqf: when to open a quickfix window for cscope
" set csqf=
" cscoperelative, csre: file names in a cscope file are relative to that file
" set nocsre

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4 displaying text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scroll, scr: number of lines to scroll for CTRL-U and CTRL-D
" (local to window)
" set scr=
" scrolloff, so: number of screen lines to show around the cursor
set so=8
" wrap: long lines wrap
" (local to window)
set nowrap
" linebreak, lbr: wrap long lines at a character in 'breakat'
" (local to window)
" set nolbr
" breakindent, bri: preserve indentation in wrapped text
" (local to window)
" set nobri
" breakindentopt, briopt: adjust breakindent behaviour
" (local to window)
" set briopt=
" breakat, brk: which characters might cause a line break
" set brk=
" showbreak, sbr: string to put before wrapped screen lines
" set sbr=
" sidescroll, ss: minimal number of columns to scroll horizontally
" set ss=
" sidescrolloff, siso: minimal number of columns to keep left and right of the cursor
set siso=5
" display, dy: include "lastline" to show the last line even if it doesn't fit, include "uhex" to show unprintable characters as a hex number
" set dy=
" fillchars, fcs: characters to use for the status line, folds and  filler lines
" set fcs=
" cmdheight, ch: number of lines used for the command-line
" set ch=
" columns, co: width of the display
" set co=
" lines: number of lines in the display
" set lines=
" window: number of lines to scroll for CTRL-F and CTRL-B
" set window=
" lazyredraw, lz: don't redraw while executing macros
" set nolz
" redrawtime, rdt: timeout for 'hlsearch' and :match highlighting in
" msec
" set rdt=
" writedelay, wd: delay in msec for each char written to the display
" (for debugging)
" set wd=
" list: show <Tab> as ^I and end-of-line as $
" (local to window)
" set nolist
" listchars, lcs: list of strings used for list mode
" set lcs=
" number, nu: show the line number for each line
" (local to window)
set nu
" relativenumber, rnu: show the relative line number for each line
" (local to window)
set rnu
" numberwidth, nuw: number of columns to use for the line number
" (local to window)
" set nuw=
" conceallevel: controls whether concealable text is hidden
" (local to window)
" set cole=
" concealcursor: modes in which text in the cursor line can be concealed
" (local to window)
" set cocu=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 5 syntax, highlighting and spelling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" background, bg: "dark" or "light"; the background color brightness
" set bg=
" filetype, ft: type of file; triggers the FileType event when set
" (local to buffer)
" set ft=
" syntax, syn: name of syntax highlighting used
" (local to buffer)
" set syn=
" synmaxcol, smc: maximum column to look for syntax items
" (local to buffer)
" set smc=
" highlight, hl: which highlighting to use for various occasions
" set hl=
" hlsearch, hls: highlight all matches for the last used search pattern
" set nohls
" wincolor, wcr: highlight group to use for the window
" (local to window)
" set wcr=
" termguicolors, tgc: use GUI colors for the terminal
" set notgc
" cursorcolumn, cuc: highlight the screen column of the cursor
" (local to window)
" set nocuc
" cursorline, cul: highlight the screen line of the cursor
" (local to window)
" set nocul
" colorcolumn, cc: columns to highlight
" (local to window)
set cc=72
" spell: highlight spelling mistakes
" (local to window)
" set nospell
" spelllang, spl: list of accepted languages
" (local to buffer)
" set spl=en
" spellfile, spf: file that "zg" adds good words to
" (local to buffer)
" set spf=
" spellcapcheck, spc: pattern to locate the end of a sentence
" (local to buffer)
" set spc=
" spelloptions, spo: flags to change how spell checking works
" (local to buffer)
" set spo=
" spellsuggest, sps: methods used to suggest corrections
" set sps=
" mkspellmem, msm: amount of memory used by :mkspell before compressing
" set msm=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 6 multiple windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" laststatus, ls: 0, 1 or 2; when to use a status line for the last window
set ls=2
" statusline, stl: alternate format to be used for a status line
" let g:word_count=wordcount().words
" let g:char_count=wordcount().chars
function WordCount()
  if has_key(wordcount(),'visual_words')
    let g:word_count=wordcount().visual_words."/".wordcount().words
    let g:char_count=wordcount().visual_chars."/".wordcount().chars
  else
    let g:word_count=wordcount().cursor_words."/".wordcount().words
    let g:char_count=wordcount().cursor_chars."/".wordcount().chars
  endif
  return "w: ".g:word_count.", c: ".g:char_count
endfunction
set stl=%f\ %h%m%r\ %{WordCount()}%=%l,%c%V\ %P
" equalalways, ea: make all windows the same size when adding/removing windows
" set ea
" eadirection, ead: in which direction 'equalalways' works: "ver", "hor" or "both"
" set ead=
" winheight, wh: minimal number of lines used for the current window
" set wh=
" winminheight, wmh: minimal number of lines used for any window
" set wmh=
" winfixheight, wfh: keep the height of the window
" (local to window)
" set nowfh
" winfixwidth, wfw: keep the width of the window
" (local to window)
" set nowfw
" winwidth, wiw: minimal number of columns used for the current window
" set wiw=
" winminwidth, wmw: minimal number of columns used for any window
" set wmw=
" helpheight, hh: initial height of the help window
" set hh=
" previewheight, pvh: default height for the preview window
" set pvh=
" previewwindow, pvw: identifies the preview window
" (local to window)
" set nopvw
" hidden, hid: don't unload a buffer when no longer shown in a window
" set nohid
" switchbuf, swb: "useopen" and/or "split"; which window to use when jumping to a buffer
" set swb=
" splitbelow, sb: a new window is put below the current one
set sb
" splitright, spr: a new window is put right of the current one
set spr
" scrollbind, scb: this window scrolls together with other bound windows
" (local to window)
" set noscb
" scrollopt, sbo: "ver", "hor" and/or "jump"; list of options for 'scrollbind'
" set sbo=
" cursorbind, crb: this window's cursor moves together with other bound windows
" (local to window)
" set nocrb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 7 multiple tab pages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" showtabline, stal: 0, 1 or 2; when to use a tab pages line
" set stal=
" tabpagemax, tpm: maximum number of tab pages to open for -p and "tab all"
" set tpm=
" tabline, tal: custom tab pages line
" set tal=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 8 terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scrolljump, sj: minimal number of lines to scroll at a time
" set sj=
" title: show info in the window title
set title
" titlelen: percentage of 'columns' used for the window title
" set titlelen=
" titlestring: when not empty, string to be used for the window title
" set titlestring=
" titleold: string to restore the title to when exiting Vim
" set titleold=
" icon: set the text of the icon for this window
" set noicon
" iconstring: when not empty, text for the icon of this window
" set iconstring=
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 9 using the mouse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mouse: list of flags for using the mouse
" set mouse=
" mousemodel: "extend", "popup" or "popup_setpos"; what the right mouse button is used for
" set mousem=
" mousetime, mouset: maximum time in msec to recognize a double-click
" set mouset=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 10 printing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" printoptions, popt: list of items that control the format of :hardcopy output
" set popt=
" printdevice, pdev: name of the printer to be used for :hardcopy
" set pdev=
" printexpr, pexpr: expression used to print the PostScript file for :hardcopy
" set pexpr=
" printfont, pfn: name of the font to be used for :hardcopy
" set pfn=
" printheader, pheader: format of the header used for :hardcopy
" set pheader=
" printencoding, penc: encoding used to print the PostScript file for :hardcopy
" set penc=
" printmbcharset, pmbcs: the CJK character set to be used for CJK output from :hardcopy
" set pmbcs=
" printmbfont, pmbfn: list of font names to be used for CJK output from :hardcopy
" set pmbfn=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 11 messages and info
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" terse: add 's' flag in 'shortmess' (don't show search message)
" set noterse
" shortmess, shm: list of flags to make messages shorter
" set shm=
" showcmd, sc: show (partial) command keys in the status line
" set nosc
" showmode, smd: display the current mode in the status line
" set smd
" ruler, ru: show cursor position below each window
" set noru
" rulerformat, ruf: alternate format to be used for the ruler
" set ruf=
" report: threshold for reporting number of changed lines
" set report=
" verbose, vbs: the higher the more messages are given
" set vbs=
" verbosefile, vfile: file to write messages in
" set vfile=
" more: pause listings when the screen is full
" set more
" confirm, cf: start a dialog when a command fails
" set nocf
" errorbells, eb: ring the bell for error messages
" set noeb
" visualbell, vb: use a visual bell instead of beeping
" set novb
" belloff: do not ring the bell for these reasons
" set belloff=
" helplang, hlg: list of preferred languages for finding help
" set hlg=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 12 selecting text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" selection, sel: "old", "inclusive" or "exclusive"; how selecting text behaves
" set sel=
" selectmode, slm: "mouse", "key" and/or "cmd"; when to start Select mode instead of Visual mode
" set slm=
" clipboard, cb: "unnamed" to use the * register like unnamed register, "autoselect" to always put selected text on the clipboard
set cb=unnamed,unnamedplus
" keymodel, km: "startsel" and/or "stopsel"; what special keys can do
" set km=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 13 editing text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" undolevels, ul: maximum number of changes that can be undone
" (global or local to buffer)
" set ul=
" undofile, udf: automatically save and restore undo history
" set noudf: udf
" undodir, udir: list of directories for undo files
" set udir=
" undoreload, ur: maximum number lines to save for undo on a buffer reload
" set ur=
" modified, mod: changes have been made and not written to a file
" (local to buffer)
" set mod
" readonly, ro: buffer is not to be written
" (local to buffer)
" set noro
" modifiable, ma: changes to the text are possible
" (local to buffer)
" set ma
" textwidth, tw: line length above which to break a line
" (local to buffer)
set tw=72
" wrapmargin, wm: margin from the right in which to break a line
" (local to buffer)
" set wm=
" backspace, bs: specifies what <BS>, CTRL-W, etc. can do in Insert mode
" set bs=
" comments, com: definition of what comment lines look like
" (local to buffer)
" set com=
" formatoptions, fo: list of flags that tell how automatic formatting works
" (local to buffer)
" set fo=
" formatlistpat, flp: pattern to recognize a numbered list
" (local to buffer)
" set flp=
" formatexpr, fex: expression used for "gq" to format lines
" (local to buffer)
" set fex=
" complete, cpt: specifies how Insert mode completion works for CTRL-N and CTRL-P
" (local to buffer)
" set cpt=
" completeopt, cot: whether to use a popup menu for Insert mode completion
" set cot=
" pumheight, ph: maximum height of the popup menu
" set ph=0
" pumwidth, pw: minimum width of the popup menu
" set pw=
" completefunc, cfu: user defined function for Insert mode completion
" (local to buffer)
" set cfu=
" omnifunc, ofu: function for filetype-specific Insert mode completion
" (local to buffer)
" set ofu=
" dictionary, dict: list of dictionary files for keyword completion
" (global or local to buffer)
" set dict=
" thesaurus, tsr: list of thesaurus files for keyword completion
" (global or local to buffer)
" set tsr=
" infercase, inf: adjust case of a keyword completion match
" (local to buffer)
" set noinf
" digraph, dg: enable entering digraphs with c1 <BS> c2
" set nodg
" tildeop, top: the "~" command behaves like an operator
" set notop
" operatorfunc, opfunc: function called for the "g@" operator
" set opfunc=
" showmatch, sm: when inserting a bracket, briefly jump to its match
" set nosm
" matchtime, mat: tenth of a second to show a match for 'showmatch'
" set mat=
" matchpairs, mps: list of pairs that match for the "%" command
" (local to buffer)
" set mps=
" joinspaces, js: use two spaces after '.' when joining a line
set nojs
" nrformats, nf: "alpha", "octal", "hex", "bin" and/or "unsigned"; number formats recognized for CTRL-A and CTRL-X commands
" (local to buffer)
" set nf=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 14 tabs and indenting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tabstop, ts: number of spaces a <Tab> in the text stands for
" (local to buffer)
set ts=2
" shiftwidth, sw: number of spaces used for each step of (auto)indent
" (local to buffer)
" set sw=
" vartabstop, vts: list of number of spaces a tab counts for
" (local to buffer)
" set vts=
" varsofttabstop, vsts: list of number of spaces a soft tabsstop counts for
" (local to buffer)
" set vsts=
" smarttab, sta: a <Tab> in an indent inserts 'shiftwidth' spaces
" set sta
" softtabstop, sts: if non-zero, number of spaces to insert for a <Tab>
" (local to buffer)
" set sts=
" shiftround, sr: round to 'shiftwidth' for "<<" and ">>"
" set nosr: sr
" expandtab, et: expand <Tab> to spaces in Insert mode
" (local to buffer)
set et
" autoindent, ai: automatically set the indent of a new line
" (local to buffer)
" set ai
" smartindent, si: do clever autoindenting
" (local to buffer)
" set nosi
" cindent, cin: enable specific indenting for C code
" (local to buffer)
" set nocin
" cinoptions, cino: options for C-indenting
" (local to buffer)
" set cino=
" cinkeys, cink: keys that trigger C-indenting in Insert mode
" (local to buffer)
" set cink=
" cinwords, cinw: list of words that cause more C-indent
" (local to buffer)
" set cinw=
" indentexpr, inde: expression used to obtain the indent of a line
" (local to buffer)
" set inde=
" indentkeys, indk: keys that trigger indenting with 'indentexpr' in Insert mode
" (local to buffer)
" set indk=
" copyindent, ci: copy whitespace for indenting from previous line
" (local to buffer)
" set noci
" preserveindent, pi: preserve kind of whitespace when changing indent
" (local to buffer)
" set nopi
" lisp: enable lisp mode
" (local to buffer)
" set nolisp
" lispwords, lw: words that change how lisp indenting works
" set lw=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 15 folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" foldenable, fen: unset to display all folds open
" set fen
" foldlevel, fdl: folds with a level higher than this number will be closed
" set fdl=
" foldlevelstart, fdls: value for 'foldlevel' when starting to edit a file
" set fdls=
" foldcolumn, fdc: width of the column used to indicate folds
" set fdc=
" foldtext, fdt: expression used to display the text of a closed fold
" set fdt=
" foldclose, fcl: set to "all" to close a fold when the cursor leaves it
" set fcl=
" foldopen, fdo: specifies for which commands a fold will be opened
" set fdo=
" foldminlines, fml: minimum number of screen lines for a fold to be closed
" set fml=
" commentstring, cms: template for comments; used to put the marker in
" set cms=
" foldmethod, fdm: folding type: "manual", "indent", "expr", "marker", "syntax" or "diff"
" set fdm=
" foldexpr, fde: expression used when 'foldmethod' is "expr"
" set fde=
" foldignore, fdi: used to ignore lines when 'foldmethod' is "indent"
" set fdi=
" foldmarker, fmr: markers used when 'foldmethod' is "marker"
" set fmr=
" foldnestmax, fdn: maximum fold depth for when 'foldmethod' is "indent" or "syntax"
" set fdn=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 16 diff mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" diff: use diff mode for the current window
" set nodiff
" diffopt, dip: options for using diff mode
" set dip=
" diffexpr, dex: expression used to obtain a diff file
" set dex=
" patchexpr, pex: expression used to patch a file
" set pex=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 17 mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" maxmapdepth, mmd: maximum depth of mapping
" set mmd=
" remap: recognize mappings in mapped keys
" set remap
" timeout, to: allow timing out halfway into a mapping
" set to
" ttimeout: allow timing out halfway into a key code
" set ttimeout
" timeoutlen, tm: time in msec for 'timeout'
" set tm=
" ttimeoutlen, ttm: time in msec for 'ttimeout'
" set ttm=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 18 reading and writing files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" modeline, ml: enable using settings from modelines when reading a file
" set noml
" modelineexpr, nomle: allow setting expression options from a modeline
" set nomle
" modelines, mls: number of lines to check for modelines
" set mls=
" binary, bin: binary file editing
" set nobin
" endofline, eol: last line in the file has an end-of-line
" set eol
" fixendofline, fixeol: fixes missing end-of-line at end of text file
" set fixeol
" bomb: prepend a Byte Order Mark to the file
" set nobomb:
" fileformat, ff: end-of-line format: "dos", "unix" or "mac"
" set ff=
" fileformats, ffs: list of file formats to look for when editing a file
" set ffs=
" write: writing files is allowed
" set write:
" writebackup, wb: write a backup file before overwriting a file
" set wb
" backup, bk: keep a backup after overwriting a file
" set nobk
" backupskip, bsk: patterns that specify for which files a backup is not made
" set bsk=
" backupcopy, bkc: whether to make the backup as a copy or rename the existing file
" set bkc=
" backupdir, bdir: list of directories to put backup files in
" set bdir=
" backupext, bex: file name extension for the backup file
" set bex=
" autowrite, aw: automatically write a file when leaving a modified buffer
" set noaw
" autowriteall, awa: as 'autowrite', but works with more commands
" set noawa
" writeany, wa: always write without asking for confirmation
" set nowa
" autoread, ar: automatically read a file when it was modified outside of Vim
" set ar
" patchmode, pm: keep oldest version of a file; specifies file name extension
" set pm=
" fsync, fs: forcibly sync the file to disk after writing it
" set fs

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 19 the swap file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" directory, dir: list of directories for the swap file
" set dir=
" swapfile, swf: use a swap file for this buffer
" set swf
" updatecount, uc: number of characters typed to cause a swap file update
" set uc=
" updatetime, ut: time in msec after which the swap file will be updated
" set ut=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 20 command line editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" history, hi: how many command lines are remembered
" set hi=
" wildchar, wc: key that triggers command-line expansion
" set wc=
" wildcharm, wcm: like 'wildchar' but can also be used in a mapping
" set wcm=
" wildmode, wim: specifies how command line completion works
" set wim=
" suffixes, su: list of file name extensions that have a lower priority
" set su=
" suffixesadd, sua: list of file name extensions added when searching for a file
" set sua=
" wildignore, wig: list of patterns to ignore files for file name completion
" set wig=
" fileignorecase, fic: ignore case when using file names
" set nofic
" wildignorecase, wic: ignore case when completing file names
" set nowic
" wildmenu, wmnu: command-line completion shows a list of matches
" set nowmnu
" cedit: key used to open the command-line window
" set cedit=
" cmdwinheight, cwh: height of the command-line window
" set cwh=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 21 executing external commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" shell, sh: name of the shell program used for external commands
" set sh=
" shellquote, shq: character(s) to enclose a shell command in
" set shq=
" shellxquote, sxq: like 'shellquote' but include the redirection
" set sxq=
" shellxescape, sxe: characters to escape when 'shellxquote' is (
" set sxe=
" shellcmdflag, shcf: argument for 'shell' to execute a command
" set shcf=
" shellredir, srr: used to redirect command output to a file
" set srr=
" shelltemp, stmp: use a temp file for shell commands instead of using a pipe
" set stmp
" equalprg, ep: program used for "=" command
" set ep=
" formatprg, fp: program used to format lines with "gq" command
" set fp=
" keywordprg, kp: program used for the "K" command
" set kp=
" warn: warn when using a shell command and a buffer has changes
" set warn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 22 running make and jumping to errors (quickfix)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" errorfile, ef: name of the file that contains error messages
" set ef=
" errorformat, efm: list of formats for error messages
" set efm=
" makeprg, mp: program used for the ":make" command
" set mp=
" shellpipe, sp: string used to put the output of ":make" in the error file
" set sp=
" makeef, mef: name of the errorfile for the 'makeprg' command
" set mef=
" grepprg, gp: program used for the ":grep" command
" set gp=
" grepformat, gfm: list of formats for output of 'grepprg'
" set gfm=
" makeencoding, menc: encoding of the ":make" and ":grep" output
" set menc=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 23 language specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" isfname, isf: specifies the characters in a file name
" set isf=
" isident, isi: specifies the characters in an identifier
" set isi=
" iskeyword, isk: specifies the characters in a keyword
" set isk=
" isprint, isp: specifies printable characters
" set isp=
" quoteescape, qe: specifies escape characters in a string
" set qe=
" rightleft, rl: display the buffer right-to-left
" set norl
" rightleftcmd, rlc: when to edit the command-line right-to-left
" set rlc=
" revins, ri: insert characters backwards
" set nori: ri
" allowrevins, ari: allow CTRL-_ in Insert and Command-line mode to toggle 'revins'
" set noari: ari
" aleph, al: the ASCII code for the first letter of the Hebrew alphabet
" set al=
" hkmap, hk: use Hebrew keyboard mapping
" set nohk: hk
" hkmapp, hkp: use phonetic Hebrew keyboard mapping
" set nohkp: hkp
" arabic, arab: prepare for editing Arabic text
" set noarab: arab
" arabicshape, arshape: perform shaping of Arabic characters
" set arshape: noarshape
" termbidi, tbidi: terminal will perform bidi handling
" set notbidi: tbidi
" keymap, kmp: name of a keyboard mapping
" set kmp=
" langmap, lmap: list of characters that are translated in Normal mode
" set lmap=
" langremap, lrm: apply 'langmap' to mapped characters
" set lrm: nolrm
" iminsert, imi: in Insert mode: 1: use :lmap; 2: use IM; 0: neither
" set imi=
" imsearch, ims: entering a search pattern: 1: use :lmap; 2: use IM; 0: neither
" set ims=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 24 multi-byte characters
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" encoding, enc: character encoding used in Vim: "latin1", "utf-8", "euc-jp", "big5", etc.
" set enc=
" fileencoding, fenc: character encoding for the current file
" set fenc=
" fileencodings, fencs: automatically detected character encodings
" set fencs=
" charconvert, ccv: expression used for character encoding conversion
" set ccv=
" delcombine, deco: delete combining (composing) characters on their own
" set nodeco: deco
" maxcombine, mco: maximum number of combining (composing) characters displayed
" set mco=
" ambiwidth, ambw: width of ambiguous width characters
" set ambw=
" emoji, emo: emoji characters are full width
" set emo: noemo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 25 various
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" virtualedit, ve: when to use virtual editing: "block", "insert", "all" and/or "onemore"
" set ve=
" eventignore, ei: list of autocommand events which are to be ignored
" set ei=
" loadplugins, lpl: load plugin scripts when starting up
" set lpl
" exrc, ex: enable reading .vimrc/.exrc/.gvimrc in the current directory
" set noex
" secure: safer working with script files in the current directory
" set nosecure
" gdefault, gd: use the 'g' flag for ":substitute"
" set nogd
" maxfuncdepth, mfd: maximum depth of function calls
" set mfd=
" sessionoptions, ssop: list of words that specifies what to put in a session file
" set ssop=
" viewoptions, vop: list of words that specifies what to save for :mkview
" set vop=
" viewdir, vdir: directory where to store files with :mkview
" set vdir=
" viminfo, vi: list that specifies what to write in the viminfo file
" set vi=
" bufhidden, bh: what happens with a buffer when it's no longer in a window
" set bh=
" buftype, bt: empty, "nofile", "nowrite", "quickfix", etc.: type of buffer
" set bt=
" buflisted, bl: whether the buffer shows up in the buffer list
" set bl
" debug: set to "msg" to see all error messages
" set debug=
" signcolumn, scl: whether to show the signcolumn
" set scl=
" pyxversion, pyx: whether to use Python 2 or 3
" set pyx=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme mknurs

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let data_dir = stdpath('data') . '/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'sheerun/vim-polyglot'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fix drawing when launched as initial command in alacritty
autocmd VimEnter * :sleep 5m
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
