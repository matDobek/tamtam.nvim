--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local color__black = hsl(0, 0, 13)
local color__white = hsl(0, 30, 90)

--local color__bg       = hsl(310, 10, 10)
--local color__bg_add   = color__bg.lighten(10)
--local color__system0  = hsl(310, 15, 35)
--local color__system1  = hsl(160, 75, 65)
--local color__system2  = hsl(160, 40, 40)
--local color__primary1 = hsl(310, 80, 80)
--local color__primary2 = hsl(270, 80, 80)
--local color__primary3 = hsl(230, 80, 80)

local color__bg       = hsl(0, 10, 10)
local color__bg_add   = color__bg.lighten(10)
local color__system0  = hsl(0, 10, 30)
local color__system1  = hsl(180, 40, 80)
local color__system2  = hsl(180, 40, 80)
local color__primary1 = hsl(30, 40, 80)
local color__primary2 = hsl(30, 40, 60)
local color__primary3 = hsl(30, 40, 40)

-- black  -- hsl(0, 0, 13)    -- #1C1717
-- white  -- hsl(0, 30, 90)   -- #EEDDDD
-- bg     -- hsl(30, 15, 14)  -- #1C1717
-- bg2    -- hsl(30, 15, 32)  -- #544545
-- 1      -- hsl(30, 40, 60)  -- #C29970
-- 2      -- hsl(30, 40, 40)  -- #8F673D
-- yellow -- hsl(30, 40, 80)  -- #BA8C5E
-- red    -- hsl(0, 40, 80)   -- #E0B8B8
-- green  -- hsl(90, 40, 80)  -- #AEC639
-- blue   -- hsl(180, 40, 80) -- #B8E0E0

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    --- --- ---

    Normal       { bg = color__bg, fg = color__primary1 }, -- normal text

    NormalFloat  { bg = color__bg_add }, -- Normal text in floating windows.
    Pmenu        { bg = color__bg_add }, -- Popup menu: normal item.

    Comment      { bg = color__bg, fg = color__system0 }, -- any comment
    Error        { bg = Comment.fg, fg = Comment.bg }, -- (preferred) any erroneous construct
    Todo         { bg = Comment.fg, fg = Comment.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    ColorColumn  { bg = Comment.fg, fg = Comment.bg }, -- used for the columns set with 'colorcolumn'
    WarningMsg   { bg = Comment.fg, fg = Comment.bg }, -- warning messages
    ErrorMsg     { bg = Comment.fg, fg = Comment.bg }, -- error messages on the command line

    SpecialKey   { bg = color__bg, fg = color__system0 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    Whitespace   { bg = color__bg, fg = color__system0 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    NonText      { bg = color__bg, fg = color__system0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    EndOfBuffer  { bg = color__bg, fg = color__system0 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

    LineNr       { bg = color__bg, fg = color__system0 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = color__bg, fg = color__system0 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    StatusLineNC { bg = color__bg, fg = color__system0 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

    StatusLine   { bg = color__bg, fg = color__system1 }, -- status line of current window
    VertSplit    { bg = color__bg, fg = color__system1 }, -- the column separating vertically split windows
    MatchParen   { bg = color__bg, fg = color__system1 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

    MsgArea      { bg = color__bg, fg = color__system2 }, -- status line of current window
    PmenuSel     { bg = color__bg, fg = color__system2 }, -- Popup menu: selected item.
    Substitute   { bg = color__system2, fg = color__bg }, -- |:substitute| replacement text highlighting
    Search       { bg = color__system2, fg = color__bg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    { bg = color__system2, fg = color__bg }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Visual       { bg = color__system2, fg = color__bg }, -- Visual mode selection

    Folded       { bg = color__primary1, fg = color__bg }, -- line used for closed folds
    Title        { bg = color__bg, fg = color__primary2 }, -- titles for output from ":set all", ":autocmd" etc.
    Directory    { bg = color__bg, fg = color__primary2 }, -- directory names (and other special names in listings)

    --- --- ---

    Identifier     { bg = color__bg, fg = color__primary2 }, -- (preferred) any variable name
    Function       { bg = color__bg, fg = color__primary3 }, -- function name (also: methods for classes)

    Type           { bg = color__bg, fg = color__primary3 }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Constant       { bg = color__bg, fg = color__primary2 }, -- (preferred) any constant
    String         { bg = color__bg, fg = color__primary1 }, --   a string constant: "this is a string"
    Character      { bg = color__bg, fg = color__primary1 }, --  a character constant: 'c', '\n'
    Number         { bg = color__bg, fg = color__primary1 }, --   a number constant: 234, 0xff
    Boolean        { bg = color__bg, fg = color__primary1 }, --  a boolean constant: TRUE, false
    Float          { bg = color__bg, fg = color__primary1 }, --    a floating point constant: 2.3e10

    Statement      { bg = color__bg, fg = color__primary2 }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --  for, do, while, etc.
    -- Label          { }, --  case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { bg = color__bg, fg = color__primary2 }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --  preprocessor #define
    -- Macro          { }, --  same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    -- Special        { }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    --- --- ---

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    --- --- --- ---- --- --- ---
    ---         TODO         ---
    --- --- --- ---- --- --- ---

    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- DiffAdd      { }, -- diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- VertSplit    { }, -- the column separating vertically split windows
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- column where |signs| are displayed
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NormalNC     { }, -- normal text in non-current windows
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- TabLine      { }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WildMenu     { }, -- current match in 'wildmenu' completion


    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
