highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "bquiet"

function! s:hi(group, fg, bg, attr)
  let l:fg   = a:fg   ==# "" ? "NONE" : a:fg
  let l:bg   = a:bg   ==# "" ? "NONE" : a:bg
  let l:attr = a:attr ==# "" ? "NONE" : a:attr

  let l:cmd = "highlight " . a:group
  let l:cmd .= " guifg=" . l:fg
  let l:cmd .= " guibg=" . l:bg
  let l:cmd .= " gui=" . l:attr
  let l:cmd .= " cterm=" . l:attr

  execute l:cmd
endfunction

let s:bg0 = "#16181D"
let s:bg1 = "#1D2026"
let s:bg2 = "#292D35"

let s:fg1 = "#AAB1BB"
let s:fg0 = "#D8DCE2"

let s:accent_dark  = "#387D7A"
let s:accent       = "#55A7A2"
let s:accent_light = "#7CC7C1"

" Core
call s:hi("Normal",       s:fg0, s:bg0, "")
call s:hi("Cursor",       s:bg0, s:fg0, "")
call s:hi("CursorLine",   "",    s:bg1, "")
call s:hi("CursorColumn", "",    s:bg1, "")
call s:hi("ColorColumn",  "",    s:bg2, "")

" Line numbers
call s:hi("LineNr",       s:fg1, s:bg0, "")
call s:hi("CursorLineNr", s:fg0, s:bg1, "bold")

" Selection / Search
call s:hi("Visual",      s:fg0, s:bg2, "")
call s:hi("VisualNOS",   s:fg1, s:bg2, "")
call s:hi("Search",      s:bg0, s:accent, "")
call s:hi("IncSearch",   s:bg0, s:accent_light, "bold")
call s:hi("CurSearch",   s:bg0, s:accent_light, "bold")
call s:hi("Substitute",  s:bg0, s:accent, "bold")
call s:hi("MatchParen", s:fg0, s:bg2, "bold,underline")

" Semantic values
call s:hi("Comment",  s:accent_light, "", "italic")
call s:hi("Constant", s:accent,       "", "")
call s:hi("Number",   s:accent,       "", "")
call s:hi("String",   s:accent,       "", "")

" Syntax structure
call s:hi("Identifier",   s:fg0, "", "")
call s:hi("Function",     s:fg0, "", "")
call s:hi("Delimiter",    s:fg0, "", "")
call s:hi("Statement",    s:fg1, "", "")
call s:hi("Operator",     s:accent_light, "", "")
call s:hi("PreProc",      s:fg1, "", "")
call s:hi("Type",         s:accent, "", "")
call s:hi("TypeDef",      s:accent, "", "")
call s:hi("StorageClass", s:fg1, "", "")
call s:hi("Structure",    s:fg1, "", "")
call s:hi("Label",        s:fg1, "", "")

" Special values
call s:hi("Special",    s:accent,       "", "")
call s:hi("Underlined", s:accent,       "", "underline")
call s:hi("Todo",       s:accent_light, "", "bold")

" Low-priority UI
call s:hi("Ignore",      s:fg1, "", "")
call s:hi("SpecialKey",  s:fg1, "", "")
call s:hi("NonText",     s:fg1, "", "")
call s:hi("Whitespace",  s:fg1, "", "")
call s:hi("EndOfBuffer", s:fg1, "", "")

" Folds
call s:hi("Folded",     s:fg1, s:bg1, "")
call s:hi("FoldColumn", s:fg1, s:bg0, "")

" Sign column
call s:hi("SignColumn", "", s:bg0, "")

" Messages
call s:hi("Title",        s:fg0, "", "bold")
call s:hi("Directory",    s:fg1, "", "")
call s:hi("ModeMsg",      s:fg0, "", "bold")
call s:hi("MoreMsg",      s:fg1, "", "")
call s:hi("Question",     s:accent, "", "")
call s:hi("MsgArea",      s:fg0, s:bg0, "")
call s:hi("MsgSeparator", s:fg1, s:bg0, "")

call s:hi("Error",      "", "", "underline")
call s:hi("WarningMsg", "", "", "underline")

" Diagnostics
call s:hi("DiagnosticUnderlineError", "", "", "underline")
call s:hi("DiagnosticUnderlineWarn",  "", "", "underline")
call s:hi("DiagnosticUnderlineInfo",  "", "", "underline")
call s:hi("DiagnosticUnderlineHint",  "", "", "underline")

" Spell checking
call s:hi("SpellBad",   "", "", "undercurl")
call s:hi("SpellCap",   "", "", "undercurl")
call s:hi("SpellLocal", "", "", "undercurl")
call s:hi("SpellRare",  "", "", "undercurl")

" Popup menu
call s:hi("Pmenu",        s:fg1, s:bg1, "")
call s:hi("PmenuSel", s:bg0, s:accent, "bold")
call s:hi("PmenuSbar",    "",    s:bg2, "")
call s:hi("PmenuThumb",   "",    s:fg1, "")
call s:hi("PmenuMatch",   s:accent, s:bg1, "bold")
call s:hi("PmenuMatchSel", s:bg0, s:accent_light, "bold")

" Floating windows
call s:hi("NormalFloat", s:fg0, s:bg1, "")
call s:hi("FloatBorder", s:fg1, s:bg1, "")

" Status line
call s:hi("StatusLine",   s:fg0, s:bg2, "bold")
call s:hi("StatusLineNC", s:fg1, s:bg1, "")

" Tabs
call s:hi("TabLine",     s:fg1, s:bg1, "")
call s:hi("TabLineFill", s:fg1, s:bg1, "")
call s:hi("TabLineSel",  s:fg0, s:bg2, "bold")

" Window separators
call s:hi("VertSplit",    s:bg2, s:bg0, "")
call s:hi("WinSeparator", s:bg2, s:bg0, "")

" Wild menu
call s:hi("WildMenu", s:bg0, s:fg0, "bold")

" Quickfix
call s:hi("QuickFixLine", s:fg0, s:bg2, "bold")

" Diff
call s:hi("DiffAdd",    s:accent_dark, s:bg1, "")
call s:hi("DiffChange", s:fg1,         s:bg2, "")
call s:hi("DiffDelete", s:fg1,         s:bg1, "")
call s:hi("DiffText",   s:accent,      s:bg2, "bold")

" Generic added / changed / removed
call s:hi("Added",   s:accent,      "", "")
call s:hi("Changed", s:accent_dark, "", "")
call s:hi("Removed", s:fg1,         "", "")

" Language-specific
call s:hi("cucumberTags", s:accent, "", "")
call s:hi("htmlTagN",     s:fg1,    "", "")
call s:hi("rubySymbol",   s:accent, "", "")

" HTML
call s:hi("htmlTag",        s:fg1,          "", "")
call s:hi("htmlEndTag",     s:fg1,          "", "")
call s:hi("htmlTagName",    s:fg0,          "", "")
call s:hi("htmlArg",        s:fg1,          "", "")
call s:hi("htmlString",     s:accent,       "", "")
call s:hi("htmlComment",    s:accent_light, "", "italic")
call s:hi("htmlSpecialChar", s:accent,      "", "")

" CSS
call s:hi("cssSelectorOp",       s:accent_light, "", "")
call s:hi("cssSelectorOp2",      s:accent_light, "", "")
call s:hi("cssClassName",        s:fg0,          "", "")
call s:hi("cssIdentifier",       s:fg0,          "", "")
call s:hi("cssTagName",          s:fg0,          "", "")
call s:hi("cssProp",             s:fg1,          "", "")
call s:hi("cssAttr",             s:fg1,          "", "")
call s:hi("cssStringQ",          s:accent,       "", "")
call s:hi("cssStringQQ",         s:accent,       "", "")
call s:hi("cssColor",            s:accent,       "", "")
call s:hi("cssValueNumber",      s:accent,       "", "")
call s:hi("cssValueLength",      s:accent,       "", "")
call s:hi("cssValueInteger",     s:accent,       "", "")
call s:hi("cssComment",          s:accent_light, "", "italic")
call s:hi("cssImportant",        s:accent_light, "", "bold")

" Markdown
call s:hi("markdownH1", s:fg0, "", "bold")
call s:hi("markdownH2", s:fg0, "", "bold")
call s:hi("markdownH3", s:fg0, "", "bold")
call s:hi("markdownH4", s:fg1, "", "bold")
call s:hi("markdownH5", s:fg1, "", "bold")
call s:hi("markdownH6", s:fg1, "", "bold")

call s:hi("markdownHeadingDelimiter", s:accent_light, "", "bold")

call s:hi("markdownListMarker",        s:accent_light, "", "")
call s:hi("markdownOrderedListMarker", s:accent_light, "", "")

call s:hi("markdownBlockquote", s:accent_light, "", "italic")

call s:hi("markdownBold",       s:fg0, "", "bold")
call s:hi("markdownItalic",     s:fg1, "", "italic")
call s:hi("markdownBoldItalic", s:fg0, "", "bold,italic")

call s:hi("markdownCode",          s:accent,       "", "")
call s:hi("markdownCodeBlock",     s:accent,       "", "")
call s:hi("markdownCodeDelimiter", s:accent_light, "", "")

call s:hi("markdownLinkText",          s:accent,       "", "underline")
call s:hi("markdownUrl",               s:accent,       "", "underline")
call s:hi("markdownLinkDelimiter",     s:accent_light, "", "")
call s:hi("markdownLinkTextDelimiter", s:accent_light, "", "")

call s:hi("markdownRule", s:accent_light, "", "")

call s:hi("markdownEscape",           s:accent_light, "", "")
call s:hi("markdownError",            "",             "", "underline")
call s:hi("markdownId",               s:accent,        "", "")
call s:hi("markdownIdDeclaration",    s:accent,        "", "")
call s:hi("markdownAutomaticLink",    s:accent,        "", "underline")
call s:hi("markdownUrlTitle",         s:accent,        "", "")
call s:hi("markdownFootnote",         s:accent_light,  "", "")
call s:hi("markdownFootnoteDefinition", s:accent_light, "", "")
