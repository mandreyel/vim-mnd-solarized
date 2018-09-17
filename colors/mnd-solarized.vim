" =============================================================== 
" Project: Mnd Solarized 
" Repository: https://github.com/mandreyel/vim-mnd-solarized 
" License: MIT
" ===============================================================

" ---------------------------------------------------------------
" Setup
" ---------------------------------------------------------------
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mnd-solarized"

if has('nvim')
    " For Neovim 0.1.3 and 0.1.4
    if has('nvim-0.1.4') || has('nvim-0.1.4')
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    " Or if you have Neovim >= 0.1.5
    if has('nvim-0.1.5') && has("termguicolors")
        set termguicolors
    endif
else
    if v:version < 800
        " for vim 7
        set t_Co=256
    else
        " for vim 8
        if has("termguicolors")
            set termguicolors
        endif
    endif
endif

" ---------------------------------------------------------------
" Option variables
" ---------------------------------------------------------------
let g:mnd_solarized_terminal_italic = get(g:, 'mnd_solarized_terminal_italic', 1)
let g:mnd_solarized_terminal_bold = get(g:, 'mnd_solarized_terminal_bold', 1)

let g:mnd_solarized_uniform_diff_bg = get(g:, 'mnd_solarized_uniform_diff_bg', 0)

let g:mnd_solarized_vert_split = get(g:, 'mnd_solarized_vert_split', 0)


" ---------------------------------------------------------------
" Italics
" ---------------------------------------------------------------
let s:italic = ""
if g:mnd_solarized_terminal_italic
    let s:italic = "italic"
endif


" ---------------------------------------------------------------
" Bold
" ---------------------------------------------------------------
let s:bold = ""
if g:mnd_solarized_terminal_bold
    let s:bold = "bold"
endif


" ---------------------------------------------------------------
" Colors
" ---------------------------------------------------------------
" solarized colors
let s:solarized_white=['#93a1a1', '203']

let s:dk_green=['#002b36', '00']
let s:md_green=['#073642', '18']
let s:grey_green=['#586e75', '19']
let s:rotten_green=['#859900', '21']

let s:teal=['#2aa198', '21']
let s:blue=['#268bd2', '21']
let s:dk_blue_green=['#218299', '114'] " darker: 22869e, even darker: 005970
let s:dk_blue_green=['#207f96', '114'] " slightly lighter than above
let s:blue_green=['#2592ad', '114']
"let s:l_blue_green=['#1c6e82', '114']

let s:dk_orange=['#cb4b16', '21']
let s:orange=['#b58900', '21']

let s:purple=['#6c71c4', '21']
let s:magenta=['#c12f6e', '21']

let s:lighter_grey_green=['#657b83', '08']
let s:grey=['#839496', '20']

let s:white=['#ffffff', '15']
let s:none=['NONE', 'NONE']

" ---------------------------------------------------------------
" Highlight function
" ---------------------------------------------------------------
function! <sid>hi(group, fg, bg, attr, attrsp)
    " fg, bg, attr, attrsp
    if !empty(a:fg)
        exec "hi " . a:group . " guifg=" .  a:fg[0]
        exec "hi " . a:group . " ctermfg=" . a:fg[1]
    endif
    if !empty(a:bg)
        exec "hi " . a:group . " guibg=" .  a:bg[0]
        exec "hi " . a:group . " ctermbg=" . a:bg[1]
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" .   a:attr
        exec "hi " . a:group . " cterm=" . a:attr
    endif
    if !empty(a:attrsp)
        exec "hi " . a:group . " guisp=" . a:attrsp[0]
    endif
endfunction


" ---------------------------------------------------------------
" call <sid>:hi(group, fg, bg, gui, guisp)
" ---------------------------------------------------------------
call <sid>hi('Bold', '', '', 'bold', '')
call <sid>hi('Debug', s:solarized_white, '', '', '')
call <sid>hi('Directory', s:blue, '', '', '')
call <sid>hi('Error', s:dk_orange, s:dk_green, '', '')
call <sid>hi('ErrorMsg', s:dk_orange, s:dk_green, '', '')
call <sid>hi('Exception', s:orange, '', '', '')
call <sid>hi('Italic', '', '', s:italic, '')

call <sid>hi('Macro', s:teal, '', '', '')
call <sid>hi('MatchParen', s:orange, s:dk_green, '', '')
call <sid>hi('ModeMsg', s:blue_green, '', '', '')
call <sid>hi('MoreMsg', s:blue_green, '', '', '')
call <sid>hi('Question', s:blue, '', '', '')

call <sid>hi('PMenu', s:solarized_white, s:md_green, '', '')
call <sid>hi('PMenuSel', s:dk_green, s:teal, '', '')
call <sid>hi('PmenuSbar', '', s:grey_green, '', '')
call <sid>hi('PmenuThumb', '', s:solarized_white, '', '')

call <sid>hi('SpecialKey', s:grey_green, '', '', '')
call <sid>hi('TooLong', s:solarized_white, '', '', '')
call <sid>hi('Underlined', s:solarized_white, '', '', '')
call <sid>hi('Visual', '', s:md_green, '', '')
call <sid>hi('VisualNOS', s:solarized_white, '', '', '')
call <sid>hi('WarningMsg', s:solarized_white, '', '', '')
call <sid>hi('WildMenu', s:teal, s:md_green, s:bold, '')
call <sid>hi('Title', s:blue, '', '', '')
call <sid>hi('Conceal', s:blue, s:dk_green, '', '')
call <sid>hi('Cursor', s:dk_green, s:grey, '', '')
call <sid>hi('NonText', s:grey_green, '', '', '')
call <sid>hi('Normal', s:solarized_white, s:dk_green, '', '')
call <sid>hi('EndOfBuffer', s:grey, s:dk_green, '', '')
call <sid>hi('LineNr', s:grey_green, s:dk_green, '', '')
call <sid>hi('SignColumn', s:dk_green, s:dk_green, '', '')
call <sid>hi('StatusLine', s:grey_green, s:dk_green, '', '')
call <sid>hi('StatusLineNC', s:md_green, s:grey_green, '', '')
call <sid>hi('VertSplit', s:dk_green, s:grey_green, '', '')
call <sid>hi('ColorColumn', '', s:md_green, '', '')

" Gutter
call <sid>hi('FoldColumn', s:blue, s:dk_green, '', '')
call <sid>hi('Folded', s:grey_green, s:md_green, s:italic, '')
call <sid>hi('CursorColumn', '', s:md_green, '', '')
call <sid>hi('CursorLine', '', s:md_green, 'NONE', '')
call <sid>hi('CursorLineNR', s:dk_green, s:dk_green, '', '')
call <sid>hi('CursorLineNr', s:solarized_white, s:md_green, '', '')

" Search
call <sid>hi('Search', s:teal, s:md_green, s:bold, '')
call <sid>hi('IncSearch', s:orange, s:md_green, s:bold, '')

" Tabs
call <sid>hi('TabLine', s:grey_green, s:md_green, '', '')
call <sid>hi('TabLineFill', s:md_green, s:md_green, '', '')
call <sid>hi('TabLineSel', s:solarized_white, s:md_green, '', '')

call <sid>hi('helpExample', s:orange, '', '', '')
call <sid>hi('helpCommand', s:orange, '', '', '')

" Standard syntax highlighting
call <sid>hi('Character', s:solarized_white, '', '', '')
call <sid>hi('Comment', s:grey_green, '', s:italic, '')
call <sid>hi('SpecialComment', s:dk_blue_green, '', s:italic, '')
call <sid>hi('Conditional', s:purple, '', '', '')
call <sid>hi('Define', s:blue, '', '', '')
call <sid>hi('Delimiter', s:orange, '', '', '')
call <sid>hi('Constant', s:dk_orange, '', '', '')
call <sid>hi('Boolean', s:dk_orange, '', '', '')
call <sid>hi('Float', s:dk_orange, '', '', '')
call <sid>hi('Number', s:dk_orange, '', '', '')
call <sid>hi('Function', s:teal, '', '', '')
call <sid>hi('Identifier', s:solarized_white, '', '', '')
call <sid>hi('Include', s:teal, '', '', '')
call <sid>hi('Keyword', s:purple, '', '', '')
call <sid>hi('Label', s:purple, '', '', '')
call <sid>hi('Operator', s:orange, '', '', '')
call <sid>hi('PreProc', s:blue_green, '', '', '')
call <sid>hi('Repeat', s:purple, '', '', '')
call <sid>hi('Special', s:blue_green, '', '', '')
call <sid>hi('SpecialChar', s:dk_orange, '', '', '')
call <sid>hi('Statement', s:orange, '', '', '')
call <sid>hi('StorageClass', s:teal, '', '', '')
call <sid>hi('String', s:dk_blue_green, '', '', '')
call <sid>hi('Structure', s:teal, '', '', '')
call <sid>hi('Tag', s:teal, '', '', '')
call <sid>hi('Todo', s:dk_orange, s:dk_green, '', '')
call <sid>hi('Type', s:teal, '', '', '')
call <sid>hi('Typedef', s:teal, '', '', '')

call <sid>hi('SpellBad', '', '', 'undercurl', '')
call <sid>hi('SpellLocal', '', '', 'undercurl', '')
call <sid>hi('SpellCap', '', '', 'undercurl', '')
call <sid>hi('SpellRare', '', '', 'undercurl', '')

" C
call <sid>hi('cIncluded', s:blue_green, '', '', '')
call <sid>hi('cStorageClass', s:teal, '', '', '')
call <sid>hi('cOperator', s:purple, '', '', '')
call <sid>hi('cPreCondit', s:purple, '', '', '')

" C++
call <sid>hi('cppStatement', s:orange, '', '', '')
call <sid>hi('cppModifier', s:blue_green, '', '', '')
call <sid>hi('cppAccess', s:orange, '', '', '')
call <sid>hi('cppExceptions', s:orange, '', '', '')
call <sid>hi('cppOperator', s:purple, '', '', '')
call <sid>hi('cppCast', s:orange, '', '', '')
call <sid>hi('cppStorageClass', s:teal, '', '', '')
call <sid>hi('cppStructure', s:teal, '', '', '')
call <sid>hi('cppConstant', s:orange, '', '', '')
call <sid>hi('cppRawString', s:purple, '', '', '')

" Rust
call <sid>hi('rustStorage', s:orange, '', '', '')
call <sid>hi('rustSelf', s:orange, '', '', '')
call <sid>hi('rustEnumVariant', s:teal, '', '', '')

" CSS
call <sid>hi('csClass', s:orange, '', '', '')
call <sid>hi('csAttribute', s:orange, '', '', '')
call <sid>hi('csModifier', s:purple, '', '', '')
call <sid>hi('csType', s:solarized_white, '', '', '')
call <sid>hi('csUnspecifiedStatement', s:blue, '', '', '')
call <sid>hi('csContextualStatement', s:purple, '', '', '')
call <sid>hi('csNewDecleration', s:solarized_white, '', '', '')

call <sid>hi('cssColor', s:teal, '', '', '')
call <sid>hi('cssBraces', s:grey, '', '', '')
call <sid>hi('cssClassName', s:purple, '', '', '')

" Diff
if g:mnd_solarized_uniform_diff_bg
    call <sid>hi('DiffAdd', s:teal, s:md_green, s:bold, '')
else
    call <sid>hi('DiffAdd', s:dk_green, s:dk_blue_green, '', '')
endif
call <sid>hi('DiffChange', s:grey_green, s:md_green, '', '')
call <sid>hi('DiffDelete', s:dk_orange, s:md_green, '', '')
call <sid>hi('DiffText', s:blue, s:md_green, '', '')
call <sid>hi('DiffAdded', s:white, s:blue_green, '', '')
call <sid>hi('DiffFile', s:solarized_white, s:dk_green, '', '')
call <sid>hi('DiffNewFile', s:blue_green, s:dk_green, '', '')
call <sid>hi('DiffLine', s:blue, s:dk_green, '', '')
call <sid>hi('DiffRemoved', s:white, s:solarized_white, '', '')

" Git
call <sid>hi('gitCommitOverflow', s:solarized_white, '', '', '')
call <sid>hi('gitCommitSummary', s:blue_green, '', '', '')

" HTML
call <sid>hi('htmlBold', s:orange, '', '', '')
call <sid>hi('htmlItalic', s:purple, '', '', '')
call <sid>hi('htmlTag', s:teal, '', '', '')
call <sid>hi('htmlEndTag', s:teal, '', '', '')
call <sid>hi('htmlArg', s:orange, '', '', '')
call <sid>hi('htmlTagName', s:solarized_white, '', '', '')
call <sid>hi('htmlString', s:blue_green, '', '', '')

" JS
call <sid>hi('javaScript', s:grey, '', '', '')
call <sid>hi('javaScriptNumber', s:orange, '', '', '')
call <sid>hi('javaScriptBraces', s:grey, '', '', '')

" Markdown
call <sid>hi('markdownCode', s:dk_blue_green, '', '', '')
call <sid>hi('markdownCodeBlock', s:dk_blue_green, '', '', '')
call <sid>hi('markdownHeadingDelimiter', s:blue, '', '', '')
call <sid>hi('markdownItalic', s:purple, '', s:italic, '')
call <sid>hi('markdownBold', s:orange, '', s:bold, '')
call <sid>hi('markdownCodeDelimiter', s:orange, '', s:italic, '')
call <sid>hi('markdownError', s:grey, s:dk_green, '', '')

call <sid>hi('NeomakeErrorSign', s:solarized_white, s:dk_green, '', '')
call <sid>hi('NeomakeWarningSign', s:orange, s:dk_green, '', '')
call <sid>hi('NeomakeInfoSign', s:white, s:dk_green, '', '')
call <sid>hi('NeomakeError', s:solarized_white, '', 'undercurl', s:solarized_white)
call <sid>hi('NeomakeWarning', s:solarized_white, '', 'undercurl', s:solarized_white)

" ALE
call <sid>hi('ALEErrorSign', s:orange, s:dk_green, s:bold, '')
call <sid>hi('ALEWarningSign', s:orange, s:dk_green, s:bold, '')
call <sid>hi('ALEInfoSign', s:white, s:dk_green, s:bold, '')

" NERDTree
call <sid>hi('NERDTreeExecFile', s:grey, '', '', '')
call <sid>hi('NERDTreeDirSlash', s:blue, '', '', '')
call <sid>hi('NERDTreeOpenable', s:blue, '', '', '')

" PHP
call <sid>hi('phpComparison', s:grey, '', '', '')
call <sid>hi('phpParent', s:grey, '', '', '')
call <sid>hi('phpMemberSelector', s:grey, '', '', '')

" Python
call <sid>hi('pythonRepeat', s:purple, '', '', '')
call <sid>hi('pythonOperator', s:purple, '', '', '')

" Ruby
call <sid>hi('rubyConstant', s:orange, '', '', '')
call <sid>hi('rubySymbol', s:blue_green, '', '', '')
call <sid>hi('rubyAttribute', s:blue, '', '', '')
call <sid>hi('rubyInterpolation', s:blue_green, '', '', '')
call <sid>hi('rubyInterpolationDelimiter', s:orange, '', '', '')
call <sid>hi('rubyStringDelimiter', s:blue_green, '', '', '')
call <sid>hi('rubyRegexp', s:teal, '', '', '')

" SASS
call <sid>hi('sassidChar', s:solarized_white, '', '', '')
call <sid>hi('sassClassChar', s:orange, '', '', '')
call <sid>hi('sassInclude', s:purple, '', '', '')
call <sid>hi('sassMixing', s:purple, '', '', '')
call <sid>hi('sassMixinName', s:blue, '', '', '')

call <sid>hi('vimfilerLeaf', s:grey, '', '', '')
call <sid>hi('vimfilerNormalFile', s:grey, s:dk_green, '', '')
call <sid>hi('vimfilerOpenedFile', s:blue, '', '', '')
call <sid>hi('vimfilerClosedFile', s:blue, '', '', '')

" GitGutter
call <sid>hi('GitGutterAdd', s:blue_green, s:dk_green, s:bold, '')
call <sid>hi('GitGutterChange', s:blue, s:dk_green, s:bold, '')
call <sid>hi('GitGutterDelete', s:solarized_white, s:dk_green, s:bold, '')
call <sid>hi('GitGutterChangeDelete', s:purple, s:dk_green, s:bold, '')

" XML
call <sid>hi('xmlTag', s:teal, '', '', '')
call <sid>hi('xmlTagName', s:grey, '', '', '')
call <sid>hi('xmlEndTag', s:teal, '', '', '')

let g:terminal_color_0=s:dk_green[0]
let g:terminal_color_8=s:dk_green[0]

let g:terminal_color_1=s:solarized_white[0]
let g:terminal_color_9=s:solarized_white[0]

let g:terminal_color_2=s:blue_green[0]
let g:terminal_color_10=s:blue_green[0]

let g:terminal_color_3=s:orange[0]
let g:terminal_color_11=s:orange[0]

let g:terminal_color_4=s:blue[0]
let g:terminal_color_12=s:blue[0]

let g:terminal_color_5=s:purple[0]
let g:terminal_color_13=s:purple[0]

let g:terminal_color_6=s:teal[0]
let g:terminal_color_14=s:teal[0]

let g:terminal_color_7=s:grey[0]
let g:terminal_color_15=s:grey[0]

let g:terminal_color_background=s:dk_green[0]
let g:terminal_color_foreground=s:solarized_white[0]
