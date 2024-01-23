local colors = require("moonbow.colors").get_base_colors()
local config = require("moonbow.config")

local groups = {
	-- Base groups
	MoonbowFg0 = { fg = colors.fg0 },
	MoonbowFg1 = { fg = colors.fg1 },
	MoonbowFg2 = { fg = colors.fg2 },
	MoonbowFg3 = { fg = colors.fg3 },
	MoonbowFg4 = { fg = colors.fg4 },
	MoonbowGray = { fg = colors.gray },
	MoonbowBg0 = { fg = colors.bg0 },
	MoonbowBg1 = { fg = colors.bg1 },
	MoonbowBg2 = { fg = colors.bg2 },
	MoonbowBg3 = { fg = colors.bg3 },
	MoonbowBg4 = { fg = colors.bg4 },
	MoonbowRed = { fg = colors.red },
	MoonbowRedBold = { fg = colors.red, bold = config.bold },
	MoonbowGreen = { fg = colors.green },
	MoonbowGreenBold = { fg = colors.green, bold = config.bold },
	MoonbowYellow = { fg = colors.yellow },
	MoonbowYellowBold = { fg = colors.yellow, bold = config.bold },
	MoonbowBlue = { fg = colors.blue },
	MoonbowBlueBold = { fg = colors.blue, bold = config.bold },
	MoonbowPurple = { fg = colors.purple },
	MoonbowPurpleBold = { fg = colors.purple, bold = config.bold },
	MoonbowAqua = { fg = colors.aqua },
	MoonbowAquaBold = { fg = colors.aqua, bold = config.bold },
	MoonbowOrange = { fg = colors.orange },
	MoonbowOrangeBold = { fg = colors.orange, bold = config.bold },
	MoonbowRedSign = config.transparent_mode and { fg = colors.red, reverse = config.invert_signs }
		or { fg = colors.red, bg = colors.bg1, reverse = config.invert_signs },
	MoonbowGreenSign = config.transparent_mode and { fg = colors.green, reverse = config.invert_signs }
		or { fg = colors.green, bg = colors.bg1, reverse = config.invert_signs },
	MoonbowYellowSign = config.transparent_mode and { fg = colors.yellow, reverse = config.invert_signs }
		or { fg = colors.yellow, bg = colors.bg1, reverse = config.invert_signs },
	MoonbowBlueSign = config.transparent_mode and { fg = colors.blue, reverse = config.invert_signs }
		or { fg = colors.blue, bg = colors.bg1, reverse = config.invert_signs },
	MoonbowPurpleSign = config.transparent_mode and { fg = colors.purple, reverse = config.invert_signs }
		or { fg = colors.purple, bg = colors.bg1, reverse = config.invert_signs },
	MoonbowAquaSign = config.transparent_mode and { fg = colors.aqua, reverse = config.invert_signs }
		or { fg = colors.aqua, bg = colors.bg1, reverse = config.invert_signs },
	MoonbowOrangeSign = config.transparent_mode and { fg = colors.orange, reverse = config.invert_signs }
		or { fg = colors.orange, bg = colors.bg1, reverse = config.invert_signs },
	MoonbowRedUnderline = { undercurl = config.undercurl, sp = colors.red },
	MoonbowGreenUnderline = { undercurl = config.undercurl, sp = colors.green },
	MoonbowYellowUnderline = { undercurl = config.undercurl, sp = colors.yellow },
	MoonbowBlueUnderline = { undercurl = config.undercurl, sp = colors.blue },
	MoonbowPurpleUnderline = { undercurl = config.undercurl, sp = colors.purple },
	MoonbowAquaUnderline = { undercurl = config.undercurl, sp = colors.aqua },
	MoonbowOrangeUnderline = { undercurl = config.undercurl, sp = colors.orange },
	Normal = config.transparent_mode and { fg = colors.fg1, bg = nil } or { fg = colors.fg1, bg = colors.bg0 },
	NormalNC = config.dim_inactive and { fg = colors.fg0, bg = colors.bg1 } or { link = "Normal" },
	CursorLine = { bg = colors.bg1 },
	CursorColumn = { link = "CursorLine" },
	TabLineFill = { fg = colors.bg4, bg = colors.bg1, reverse = config.invert_tabline },
	TabLineSel = { fg = colors.green, bg = colors.bg1, reverse = config.invert_tabline },
	TabLine = { link = "TabLineFill" },
	MatchParen = { bg = colors.bg3, bold = config.bold },
	ColorColumn = { bg = colors.bg1 },
	Conceal = { fg = colors.blue },
	CursorLineNr = { fg = colors.yellow, bg = colors.bg1 },
	NonText = { link = "MoonbowBg2" },
	SpecialKey = { link = "MoonbowFg4" },
	Visual = { bg = colors.bg6, reverse = config.invert_selection },
	VisualNOS = { link = "Visual" },
	Search = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
	IncSearch = { fg = colors.orange, bg = colors.bg0, reverse = config.inverse },
	CurSearch = { link = "IncSearch" },
	QuickFixLine = { fg = colors.bg0, bg = colors.yellow, bold = config.bold },
	Underlined = { fg = colors.blue, underline = config.underline },
	StatusLine = { fg = colors.bg2, bg = colors.fg1, reverse = config.inverse },
	StatusLineNC = { fg = colors.bg1, bg = colors.fg4, reverse = config.inverse },
	WinBar = { fg = colors.fg4, bg = colors.bg0 },
	WinBarNC = { fg = colors.fg3, bg = colors.bg1 },
	VertSplit = { fg = colors.bg3, bg = colors.bg0 },
	WildMenu = { fg = colors.blue, bg = colors.bg2, bold = config.bold },
	Directory = { link = "MoonbowBlueBold" },
	Title = { link = "MoonbowGreenBold" },
	ErrorMsg = { fg = colors.bg0, bg = colors.red, bold = config.bold },
	MoreMsg = { link = "MoonbowYellowBold" },
	ModeMsg = { link = "MoonbowYellowBold" },
	Question = { link = "MoonbowOrangeBold" },
	WarningMsg = { link = "MoonbowRedBold" },
	LineNr = { fg = colors.bg4 },
	SignColumn = config.transparent_mode and { bg = nil } or { bg = colors.bg1 },
	Folded = { fg = colors.gray, bg = colors.bg1, italic = config.italic },
	FoldColumn = { fg = colors.gray, bg = colors.bg1 },
	Cursor = { reverse = config.inverse },
	vCursor = { link = "Cursor" },
	iCursor = { link = "Cursor" },
	lCursor = { link = "Cursor" },
	Special = { link = "MoonbowOrange" },
	Comment = { fg = colors.gray, italic = config.italic },
	Todo = { fg = colors.fg0, bold = config.bold, italic = config.italic },
	Done = { fg = colors.orange, bold = config.bold, italic = config.italic },
	Error = { fg = colors.red, bold = config.bold, reverse = config.inverse },
	Statement = { link = "MoonbowRed" },
	Conditional = { link = "MoonbowRed" },
	Repeat = { link = "MoonbowRed" },
	Label = { link = "MoonbowRed" },
	Exception = { link = "MoonbowRed" },
	Operator = { fg = colors.orange, italic = config.italic },
	Keyword = { link = "MoonbowRed" },
	Identifier = { link = "MoonbowBlue" },
	Function = { link = "MoonbowGreenBold" },
	PreProc = { link = "MoonbowAqua" },
	Include = { link = "MoonbowAqua" },
	Define = { link = "MoonbowAqua" },
	Macro = { link = "MoonbowAqua" },
	PreCondit = { link = "MoonbowAqua" },
	Constant = { link = "MoonbowPurple" },
	Character = { link = "MoonbowPurple" },
	String = { fg = colors.green, italic = config.italic },
	Boolean = { link = "MoonbowPurple" },
	Number = { link = "MoonbowPurple" },
	Float = { link = "MoonbowPurple" },
	Type = { link = "MoonbowYellow" },
	StorageClass = { link = "MoonbowOrange" },
	Structure = { link = "MoonbowAqua" },
	Typedef = { link = "MoonbowYellow" },
	Pmenu = { fg = colors.fg, bg = colors.bg },
	PmenuSel = { fg = colors.bg2, bg = colors.blue, bold = config.bold },
	PmenuSbar = { bg = colors.bg2 },
	PmenuThumb = { bg = colors.bg4 },
	DiffDelete = { fg = colors.red, bg = colors.bg0, reverse = config.inverse },
	DiffAdd = { fg = colors.green, bg = colors.bg0, reverse = config.inverse },
	DiffChange = { fg = colors.aqua, bg = colors.bg0, reverse = config.inverse },
	DiffText = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
	SpellCap = { link = "MoonbowBlueUnderline" },
	SpellBad = { link = "MoonbowRedUnderline" },
	SpellLocal = { link = "MoonbowAquaUnderline" },
	SpellRare = { link = "MoonbowPurpleUnderline" },
	Whitespace = { fg = colors.bg2 },
	-- LSP Diagnostic
	DiagnosticError = { link = "MoonbowRed" },
	DiagnosticSignError = { link = "MoonbowRedSign" },
	DiagnosticUnderlineError = { link = "MoonbowRedUnderline" },
	DiagnosticWarn = { link = "MoonbowYellow" },
	DiagnosticSignWarn = { link = "MoonbowYellowSign" },
	DiagnosticUnderlineWarn = { link = "MoonbowYellowUnderline" },
	DiagnosticInfo = { link = "MoonbowBlue" },
	DiagnosticSignInfo = { link = "MoonbowBlueSign" },
	DiagnosticUnderlineInfo = { link = "MoonbowBlueUnderline" },
	DiagnosticHint = { link = "MoonbowAqua" },
	DiagnosticSignHint = { link = "MoonbowAquaSign" },
	DiagnosticUnderlineHint = { link = "MoonbowAquaUnderline" },
	DiagnosticFloatingError = { link = "MoonbowRed" },
	DiagnosticFloatingWarn = { link = "MoonbowOrange" },
	DiagnosticFloatingInfo = { link = "MoonbowBlue" },
	DiagnosticFloatingHint = { link = "MoonbowAqua" },
	DiagnosticVirtualTextError = { link = "MoonbowRed" },
	DiagnosticVirtualTextWarn = { link = "MoonbowYellow" },
	DiagnosticVirtualTextInfo = { link = "MoonbowBlue" },
	DiagnosticVirtualTextHint = { link = "MoonbowAqua" },
	LspReferenceRead = { link = "MoonbowYellowBold" },
	LspReferenceText = { link = "MoonbowYellowBold" },
	LspReferenceWrite = { link = "MoonbowOrangeBold" },
	LspCodeLens = { link = "MoonbowGray" },
	-- nvim-treesitter (0.8 compat)
	-- Adapted from https://github.com/nvim-treesitter/nvim-treesitter/commit/42ab95d5e11f247c6f0c8f5181b02e816caa4a4f#commitcomment-87014462
	["@annotation"] = { link = "Operator" },
	["@comment"] = { link = "Comment" },
	["@none"] = { bg = "NONE", fg = "NONE" },
	["@keyword.directive"] = { link = "PreProc" },
	["@keyword.directive.define"] = { link = "Define" },
	["@operator"] = { link = "Operator" },
	["@punctuation.delimiter"] = { link = "Delimiter" },
	["@punctuation.bracket"] = { link = "Delimiter" },
	["@markup.link"] = { link = "Delimiter" },
	["@string"] = { link = "String" },
	["@string.regexep"] = { link = "String" },
	["@string.escape"] = { link = "SpecialChar" },
	["@markup.link.special"] = { link = "SpecialChar" },
	["@character"] = { link = "Character" },
	["@character.special"] = { link = "SpecialChar" },
	["@boolean"] = { link = "Boolean" },
	["@number"] = { link = "Number" },
	["@number.float"] = { link = "Float" },
	["@function"] = { link = "Function" },
	["@function.call"] = { link = "Function" },
	["@function.builtin"] = { link = "Special" },
	["@function.macro"] = { link = "Macro" },
	["@function.method"] = { link = "Function" },
	["@function.method.call"] = { link = "Function" },
	["@constructor"] = { link = "Special" },
	["@variable.parameter"] = { link = "Identifier" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.function"] = { link = "Keyword" },
	["@keyword.return"] = { link = "Keyword" },
	["@keyword.conditional"] = { link = "Conditional" },
	["@keyword.repeat"] = { link = "Repeat" },
	["@keyword.debug"] = { link = "Debug" },
	["@label"] = { link = "Label" },
	["@keyword.include"] = { link = "Include" },
	["@keyword.exception"] = { link = "Exception" },
	["@type"] = { link = "Type" },
	["@type.builtin"] = { link = "Type" },
	["@type.qualifier"] = { link = "Type" },
	["@type.definition"] = { link = "Typedef" },
	["@keywork.storage"] = { link = "StorageClass" },
	["@attribute"] = { link = "PreProc" },
	["@variable.member"] = { link = "Identifier" },
	["@property"] = { link = "Identifier" },
	["@variable"] = { link = "MoonbowFg1" },
	["@variable.builtin"] = { link = "Special" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "Special" },
	["@constant.macro"] = { link = "Define" },
	["@module"] = { link = "MoonbowFg1" },
	["@string.special.symbol"] = { link = "Identifier" },
	["@markup"] = { link = "MoonbowFg1" },
	["@markup.heading"] = { link = "Title" },
	["@markup.raw"] = { link = "String" },
	["@markup.link.url"] = { link = "Underlined" },
	["@markup.math"] = { link = "Special" },
	["@markup.environment"] = { link = "Macro" },
	["@markup.environment.name"] = { link = "Type" },
	["@markup.link"] = { link = "Constant" },
	["@comment.todo"] = { link = "Todo" },
	["@comment.todo.unchecked"] = { link = "Todo" },
	["@comment.todo.checked"] = { link = "Done" },
	["@comment.note"] = { link = "SpecialComment" },
	["@comment.warning"] = { link = "WarningMsg" },
	["@comment.error"] = { link = "ErrorMsg" },
	["@diff.plus"] = { link = "diffAdded" },
	["@diff.minus"] = { link = "diffRemoved" },
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { link = "Identifier" },
	["@tag.delimiter"] = { link = "Delimiter" },

	-- nvim-treesitter (0.8 overrides)
	["@markup.strong"] = { bold = config.bold },
	["@markup.strike"] = { strikethrough = config.strikethrough },
	["@markup.italic"] = { italic = config.italic },
	["@markup.underline"] = { underline = config.underline },
	["@keyword.operator"] = { link = "MoonbowRed" },
	-- gitcommit
	gitcommitSelectedFile = { link = "MoonbowGreen" },
	gitcommitDiscardedFile = { link = "MoonbowRed" },
	-- gitsigns.nvim
	GitSignsAdd = { link = "MoonbowGreenSign" },
	GitSignsChange = { link = "MoonbowAquaSign" },
	GitSignsDelete = { link = "MoonbowRedSign" },
	-- nvim-tree
	NvimTreeSymlink = { fg = colors.neutral_aqua },
	NvimTreeRootFolder = { fg = colors.neutral_purple, bold = true },
	NvimTreeFolderIcon = { fg = colors.neutral_blue, bold = true },
	NvimTreeFileIcon = { fg = colors.light2 },
	NvimTreeExecFile = { fg = colors.neutral_green, bold = true },
	NvimTreeOpenedFile = { fg = colors.bright_red, bold = true },
	NvimTreeSpecialFile = { fg = colors.neutral_yellow, bold = true, underline = true },
	NvimTreeImageFile = { fg = colors.neutral_purple },
	NvimTreeIndentMarker = { fg = colors.dark3 },
	NvimTreeGitDirty = { fg = colors.neutral_yellow },
	NvimTreeGitStaged = { fg = colors.neutral_yellow },
	NvimTreeGitMerge = { fg = colors.neutral_purple },
	NvimTreeGitRenamed = { fg = colors.neutral_purple },
	NvimTreeGitNew = { fg = colors.neutral_yellow },
	NvimTreeGitDeleted = { fg = colors.neutral_red },
	NvimTreeWindowPicker = { bg = colors.faded_aqua },
	-- termdebug
	debugPC = { bg = colors.faded_blue },
	debugBreakpoint = { link = "MoonbowRedSign" },
	-- vim-startify
	StartifyBracket = { link = "MoonbowFg3" },
	StartifyFile = { link = "MoonbowFg1" },
	StartifyNumber = { link = "MoonbowBlue" },
	StartifyPath = { link = "MoonbowGray" },
	StartifySlash = { link = "MoonbowGray" },
	StartifySection = { link = "MoonbowYellow" },
	StartifySpecial = { link = "MoonbowBg2" },
	StartifyHeader = { link = "MoonbowOrange" },
	StartifyFooter = { link = "MoonbowBg2" },
	StartifyVar = { link = "StartifyPath" },
	StartifySelect = { link = "Title" },
	-- vim-dirvish
	DirvishPathTail = { link = "MoonbowAqua" },
	DirvishArg = { link = "MoonbowYellow" },
	-- netrw
	netrwDir = { link = "MoonbowAqua" },
	netrwClassify = { link = "MoonbowAqua" },
	netrwLink = { link = "MoonbowGray" },
	netrwSymLink = { link = "MoonbowFg1" },
	netrwExe = { link = "MoonbowYellow" },
	netrwComment = { link = "MoonbowGray" },
	netrwList = { link = "MoonbowBlue" },
	netrwHelpCmd = { link = "MoonbowAqua" },
	netrwCmdSep = { link = "MoonbowFg3" },
	netrwVersion = { link = "MoonbowGreen" },
	-- nerdtree
	NERDTreeDir = { link = "MoonbowAqua" },
	NERDTreeDirSlash = { link = "MoonbowAqua" },
	NERDTreeOpenable = { link = "MoonbowOrange" },
	NERDTreeClosable = { link = "MoonbowOrange" },
	NERDTreeFile = { link = "MoonbowFg1" },
	NERDTreeExecFile = { link = "MoonbowYellow" },
	NERDTreeUp = { link = "MoonbowGray" },
	NERDTreeCWD = { link = "MoonbowGreen" },
	NERDTreeHelp = { link = "MoonbowFg1" },
	NERDTreeToggleOn = { link = "MoonbowGreen" },
	NERDTreeToggleOff = { link = "MoonbowRed" },
	-- coc.nvim
	CocErrorSign = { link = "MoonbowRedSign" },
	CocWarningSign = { link = "MoonbowOrangeSign" },
	CocInfoSign = { link = "MoonbowBlueSign" },
	CocHintSign = { link = "MoonbowAquaSign" },
	CocErrorFloat = { link = "MoonbowRed" },
	CocWarningFloat = { link = "MoonbowOrange" },
	CocInfoFloat = { link = "MoonbowBlue" },
	CocHintFloat = { link = "MoonbowAqua" },
	CocDiagnosticsError = { link = "MoonbowRed" },
	CocDiagnosticsWarning = { link = "MoonbowOrange" },
	CocDiagnosticsInfo = { link = "MoonbowBlue" },
	CocDiagnosticsHint = { link = "MoonbowAqua" },
	CocSelectedText = { link = "MoonbowRed" },
	CocMenuSel = { link = "PmenuSel" },
	CocCodeLens = { link = "MoonbowGray" },
	CocErrorHighlight = { link = "MoonbowRedUnderline" },
	CocWarningHighlight = { link = "MoonbowOrangeUnderline" },
	CocInfoHighlight = { link = "MoonbowBlueUnderline" },
	CocHintHighlight = { link = "MoonbowAquaUnderline" },
	-- telescope.nvim
	TelescopeNormal = { link = "MoonbowFg1" },
	TelescopeSelection = { link = "MoonbowOrangeBold" },
	TelescopeSelectionCaret = { link = "MoonbowRed" },
	TelescopeMultiSelection = { link = "MoonbowGray" },
	TelescopeBorder = { link = "TelescopeNormal" },
	TelescopePromptBorder = { link = "TelescopeNormal" },
	TelescopeResultsBorder = { link = "TelescopeNormal" },
	TelescopePreviewBorder = { link = "TelescopeNormal" },
	TelescopeMatching = { link = "MoonbowBlue" },
	TelescopePromptPrefix = { link = "MoonbowRed" },
	TelescopePrompt = { link = "TelescopeNormal" },
	-- nvim-cmp
	CmpItemAbbr = { link = "MoonbowFg0" },
	CmpItemAbbrDeprecated = { link = "MoonbowFg1" },
	CmpItemAbbrMatch = { link = "MoonbowBlueBold" },
	CmpItemAbbrMatchFuzzy = { link = "MoonbowBlueUnderline" },
	CmpItemMenu = { link = "MoonbowGray" },
	CmpItemKindText = { link = "MoonbowOrange" },
	CmpItemKindMethod = { link = "MoonbowBlue" },
	CmpItemKindFunction = { link = "MoonbowBlue" },
	CmpItemKindConstructor = { link = "MoonbowYellow" },
	CmpItemKindField = { link = "MoonbowBlue" },
	CmpItemKindClass = { link = "MoonbowYellow" },
	CmpItemKindInterface = { link = "MoonbowYellow" },
	CmpItemKindModule = { link = "MoonbowBlue" },
	CmpItemKindProperty = { link = "MoonbowBlue" },
	CmpItemKindValue = { link = "MoonbowOrange" },
	CmpItemKindEnum = { link = "MoonbowYellow" },
	CmpItemKindKeyword = { link = "MoonbowPurple" },
	CmpItemKindSnippet = { link = "MoonbowGreen" },
	CmpItemKindFile = { link = "MoonbowBlue" },
	CmpItemKindEnumMember = { link = "MoonbowAqua" },
	CmpItemKindConstant = { link = "MoonbowOrange" },
	CmpItemKindStruct = { link = "MoonbowYellow" },
	CmpItemKindTypeParameter = { link = "MoonbowYellow" },
	diffAdded = { link = "MoonbowGreen" },
	diffRemoved = { link = "MoonbowRed" },
	diffChanged = { link = "MoonbowAqua" },
	diffFile = { link = "MoonbowOrange" },
	diffNewFile = { link = "MoonbowYellow" },
	diffLine = { link = "MoonbowBlue" },
	-- navic (highlight icons)
	NavicIconsFile = { link = "MoonbowBlue" },
	NavicIconsModule = { link = "MoonbowOrange" },
	NavicIconsNamespace = { link = "MoonbowBlue" },
	NavicIconsPackage = { link = "MoonbowAqua" },
	NavicIconsClass = { link = "MoonbowYellow" },
	NavicIconsMethod = { link = "MoonbowBlue" },
	NavicIconsProperty = { link = "MoonbowAqua" },
	NavicIconsField = { link = "MoonbowPurple" },
	NavicIconsConstructor = { link = "MoonbowBlue" },
	NavicIconsEnum = { link = "MoonbowPurple" },
	NavicIconsInterface = { link = "MoonbowGreen" },
	NavicIconsFunction = { link = "MoonbowBlue" },
	NavicIconsVariable = { link = "MoonbowPurple" },
	NavicIconsConstant = { link = "MoonbowOrange" },
	NavicIconsString = { link = "MoonbowGreen" },
	NavicIconsNumber = { link = "MoonbowOrange" },
	NavicIconsBoolean = { link = "MoonbowOrange" },
	NavicIconsArray = { link = "MoonbowOrange" },
	NavicIconsObject = { link = "MoonbowOrange" },
	NavicIconsKey = { link = "MoonbowAqua" },
	NavicIconsNull = { link = "MoonbowOrange" },
	NavicIconsEnumMember = { link = "MoonbowYellow" },
	NavicIconsStruct = { link = "MoonbowPurple" },
	NavicIconsEvent = { link = "MoonbowYellow" },
	NavicIconsOperator = { link = "MoonbowRed" },
	NavicIconsTypeParameter = { link = "MoonbowRed" },
	NavicText = { link = "MoonbowWhite" },
	NavicSeparator = { link = "MoonbowWhite" },
	-- html
	htmlTag = { link = "MoonbowAquaBold" },
	htmlEndTag = { link = "MoonbowAquaBold" },
	htmlTagName = { link = "MoonbowBlue" },
	htmlArg = { link = "MoonbowOrange" },
	htmlTagN = { link = "MoonbowFg1" },
	htmlSpecialTagName = { link = "MoonbowBlue" },
	htmlLink = { fg = colors.fg4, underline = config.underline },
	htmlSpecialChar = { link = "MoonbowRed" },
	htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = config.bold },
	htmlBoldUnderline = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, underline = config.underline },
	htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, italic = config.italic },
	htmlBoldUnderlineItalic = {
		fg = colors.fg0,
		bg = colors.bg0,
		bold = config.bold,
		italic = config.italic,
		underline = config.underline,
	},
	htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = config.underline },
	htmlUnderlineItalic = {
		fg = colors.fg0,
		bg = colors.bg0,
		italic = config.italic,
		underline = config.underline,
	},
	htmlItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.italic },
	-- xml
	xmlTag = { link = "MoonbowAquaBold" },
	xmlEndTag = { link = "MoonbowAquaBold" },
	xmlTagName = { link = "MoonbowBlue" },
	xmlEqual = { link = "MoonbowBlue" },
	docbkKeyword = { link = "MoonbowAquaBold" },
	xmlDocTypeDecl = { link = "MoonbowGray" },
	xmlDocTypeKeyword = { link = "MoonbowPurple" },
	xmlCdataStart = { link = "MoonbowGray" },
	xmlCdataCdata = { link = "MoonbowPurple" },
	dtdFunction = { link = "MoonbowGray" },
	dtdTagName = { link = "MoonbowPurple" },
	xmlAttrib = { link = "MoonbowOrange" },
	xmlProcessingDelim = { link = "MoonbowGray" },
	dtdParamEntityPunct = { link = "MoonbowGray" },
	dtdParamEntityDPunct = { link = "MoonbowGray" },
	xmlAttribPunct = { link = "MoonbowGray" },
	xmlEntity = { link = "MoonbowRed" },
	xmlEntityPunct = { link = "MoonbowRed" },
	-- clojure
	clojureKeyword = { link = "MoonbowBlue" },
	clojureCond = { link = "MoonbowOrange" },
	clojureSpecial = { link = "MoonbowOrange" },
	clojureDefine = { link = "MoonbowOrange" },
	clojureFunc = { link = "MoonbowYellow" },
	clojureRepeat = { link = "MoonbowYellow" },
	clojureCharacter = { link = "MoonbowAqua" },
	clojureStringEscape = { link = "MoonbowAqua" },
	clojureException = { link = "MoonbowRed" },
	clojureRegexp = { link = "MoonbowAqua" },
	clojureRegexpEscape = { link = "MoonbowAqua" },
	clojureRegexpCharClass = { fg = colors.fg3, bold = config.bold },
	clojureRegexpMod = { link = "clojureRegexpCharClass" },
	clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },
	clojureParen = { link = "MoonbowFg3" },
	clojureAnonArg = { link = "MoonbowYellow" },
	clojureVariable = { link = "MoonbowBlue" },
	clojureMacro = { link = "MoonbowOrange" },
	clojureMeta = { link = "MoonbowYellow" },
	clojureDeref = { link = "MoonbowYellow" },
	clojureQuote = { link = "MoonbowYellow" },
	clojureUnquote = { link = "MoonbowYellow" },
	-- C
	cOperator = { link = "MoonbowPurple" },
	cppOperator = { link = "MoonbowPurple" },
	cStructure = { link = "MoonbowOrange" },
	-- python
	pythonBuiltin = { link = "MoonbowOrange" },
	pythonBuiltinObj = { link = "MoonbowOrange" },
	pythonBuiltinFunc = { link = "MoonbowOrange" },
	pythonFunction = { link = "MoonbowAqua" },
	pythonDecorator = { link = "MoonbowRed" },
	pythonInclude = { link = "MoonbowBlue" },
	pythonImport = { link = "MoonbowBlue" },
	pythonRun = { link = "MoonbowBlue" },
	pythonCoding = { link = "MoonbowBlue" },
	pythonOperator = { link = "MoonbowRed" },
	pythonException = { link = "MoonbowRed" },
	pythonExceptions = { link = "MoonbowPurple" },
	pythonBoolean = { link = "MoonbowPurple" },
	pythonDot = { link = "MoonbowFg3" },
	pythonConditional = { link = "MoonbowRed" },
	pythonRepeat = { link = "MoonbowRed" },
	pythonDottedName = { link = "MoonbowGreenBold" },
	-- CSS
	cssBraces = { link = "MoonbowBlue" },
	cssFunctionName = { link = "MoonbowYellow" },
	cssIdentifier = { link = "MoonbowOrange" },
	cssClassName = { link = "MoonbowGreen" },
	cssColor = { link = "MoonbowBlue" },
	cssSelectorOp = { link = "MoonbowBlue" },
	cssSelectorOp2 = { link = "MoonbowBlue" },
	cssImportant = { link = "MoonbowGreen" },
	cssVendor = { link = "MoonbowFg1" },
	cssTextProp = { link = "MoonbowAqua" },
	cssAnimationProp = { link = "MoonbowAqua" },
	cssUIProp = { link = "MoonbowYellow" },
	cssTransformProp = { link = "MoonbowAqua" },
	cssTransitionProp = { link = "MoonbowAqua" },
	cssPrintProp = { link = "MoonbowAqua" },
	cssPositioningProp = { link = "MoonbowYellow" },
	cssBoxProp = { link = "MoonbowAqua" },
	cssFontDescriptorProp = { link = "MoonbowAqua" },
	cssFlexibleBoxProp = { link = "MoonbowAqua" },
	cssBorderOutlineProp = { link = "MoonbowAqua" },
	cssBackgroundProp = { link = "MoonbowAqua" },
	cssMarginProp = { link = "MoonbowAqua" },
	cssListProp = { link = "MoonbowAqua" },
	cssTableProp = { link = "MoonbowAqua" },
	cssFontProp = { link = "MoonbowAqua" },
	cssPaddingProp = { link = "MoonbowAqua" },
	cssDimensionProp = { link = "MoonbowAqua" },
	cssRenderProp = { link = "MoonbowAqua" },
	cssColorProp = { link = "MoonbowAqua" },
	cssGeneratedContentProp = { link = "MoonbowAqua" },
	-- javascript
	javaScriptBraces = { link = "MoonbowFg1" },
	javaScriptFunction = { link = "MoonbowAqua" },
	javaScriptIdentifier = { link = "MoonbowRed" },
	javaScriptMember = { link = "MoonbowBlue" },
	javaScriptNumber = { link = "MoonbowPurple" },
	javaScriptNull = { link = "MoonbowPurple" },
	javaScriptParens = { link = "MoonbowFg3" },
	-- typescript
	typescriptReserved = { link = "MoonbowAqua" },
	typescriptLabel = { link = "MoonbowAqua" },
	typescriptFuncKeyword = { link = "MoonbowAqua" },
	typescriptIdentifier = { link = "MoonbowOrange" },
	typescriptBraces = { link = "MoonbowFg1" },
	typescriptEndColons = { link = "MoonbowFg1" },
	typescriptDOMObjects = { link = "MoonbowFg1" },
	typescriptAjaxMethods = { link = "MoonbowFg1" },
	typescriptLogicSymbols = { link = "MoonbowFg1" },
	typescriptDocSeeTag = { link = "Comment" },
	typescriptDocParam = { link = "Comment" },
	typescriptDocTags = { link = "vimCommentTitle" },
	typescriptGlobalObjects = { link = "MoonbowFg1" },
	typescriptParens = { link = "MoonbowFg3" },
	typescriptOpSymbols = { link = "MoonbowFg3" },
	typescriptHtmlElemProperties = { link = "MoonbowFg1" },
	typescriptNull = { link = "MoonbowPurple" },
	typescriptInterpolationDelimiter = { link = "MoonbowAqua" },
	-- purescript
	purescriptModuleKeyword = { link = "MoonbowAqua" },
	purescriptModuleName = { link = "MoonbowFg1" },
	purescriptWhere = { link = "MoonbowAqua" },
	purescriptDelimiter = { link = "MoonbowFg4" },
	purescriptType = { link = "MoonbowFg1" },
	purescriptImportKeyword = { link = "MoonbowAqua" },
	purescriptHidingKeyword = { link = "MoonbowAqua" },
	purescriptAsKeyword = { link = "MoonbowAqua" },
	purescriptStructure = { link = "MoonbowAqua" },
	purescriptOperator = { link = "MoonbowBlue" },
	purescriptTypeVar = { link = "MoonbowFg1" },
	purescriptConstructor = { link = "MoonbowFg1" },
	purescriptFunction = { link = "MoonbowFg1" },
	purescriptConditional = { link = "MoonbowOrange" },
	purescriptBacktick = { link = "MoonbowOrange" },
	-- coffescript
	coffeeExtendedOp = { link = "MoonbowFg3" },
	coffeeSpecialOp = { link = "MoonbowFg3" },
	coffeeCurly = { link = "MoonbowOrange" },
	coffeeParen = { link = "MoonbowFg3" },
	coffeeBracket = { link = "MoonbowOrange" },
	-- ruby
	rubyStringDelimiter = { link = "MoonbowGreen" },
	rubyInterpolationDelimiter = { link = "MoonbowAqua" },
	rubyDefinedOperator = { link = "rubyKeyword" },
	-- objc
	objcTypeModifier = { link = "MoonbowRed" },
	objcDirective = { link = "MoonbowBlue" },
	-- go
	goDirective = { link = "MoonbowAqua" },
	goConstants = { link = "MoonbowPurple" },
	goDeclaration = { link = "MoonbowRed" },
	goDeclType = { link = "MoonbowBlue" },
	goBuiltins = { link = "MoonbowOrange" },
	-- lua
	luaIn = { link = "MoonbowRed" },
	luaFunction = { link = "MoonbowAqua" },
	luaTable = { link = "MoonbowOrange" },
	-- moonscript
	moonSpecialOp = { link = "MoonbowFg3" },
	moonExtendedOp = { link = "MoonbowFg3" },
	moonFunction = { link = "MoonbowFg3" },
	moonObject = { link = "MoonbowYellow" },
	-- java
	javaAnnotation = { link = "MoonbowBlue" },
	javaDocTags = { link = "MoonbowAqua" },
	javaCommentTitle = { link = "vimCommentTitle" },
	javaParen = { link = "MoonbowFg3" },
	javaParen1 = { link = "MoonbowFg3" },
	javaParen2 = { link = "MoonbowFg3" },
	javaParen3 = { link = "MoonbowFg3" },
	javaParen4 = { link = "MoonbowFg3" },
	javaParen5 = { link = "MoonbowFg3" },
	javaOperator = { link = "MoonbowOrange" },
	javaVarArg = { link = "MoonbowGreen" },
	-- elixir
	elixirDocString = { link = "Comment" },
	elixirStringDelimiter = { link = "MoonbowGreen" },
	elixirInterpolationDelimiter = { link = "MoonbowAqua" },
	elixirModuleDeclaration = { link = "MoonbowYellow" },
	-- scala
	scalaNameDefinition = { link = "MoonbowFg1" },
	scalaCaseFollowing = { link = "MoonbowFg1" },
	scalaCapitalWord = { link = "MoonbowFg1" },
	scalaTypeExtension = { link = "MoonbowFg1" },
	scalaKeyword = { link = "MoonbowRed" },
	scalaKeywordModifier = { link = "MoonbowRed" },
	scalaSpecial = { link = "MoonbowAqua" },
	scalaOperator = { link = "MoonbowFg1" },
	scalaTypeDeclaration = { link = "MoonbowYellow" },
	scalaTypeTypePostDeclaration = { link = "MoonbowYellow" },
	scalaInstanceDeclaration = { link = "MoonbowFg1" },
	scalaInterpolation = { link = "MoonbowAqua" },
	-- markdown
	markdownItalic = { fg = colors.fg3, italic = config.italic },
	markdownBold = { fg = colors.fg3, bold = config.bold },
	markdownBoldItalic = { fg = colors.fg3, bold = config.bold, italic = config.italic },
	markdownH1 = { link = "MoonbowGreenBold" },
	markdownH2 = { link = "MoonbowGreenBold" },
	markdownH3 = { link = "MoonbowYellowBold" },
	markdownH4 = { link = "MoonbowYellowBold" },
	markdownH5 = { link = "MoonbowYellow" },
	markdownH6 = { link = "MoonbowYellow" },
	markdownCode = { link = "MoonbowAqua" },
	markdownCodeBlock = { link = "MoonbowAqua" },
	markdownCodeDelimiter = { link = "MoonbowAqua" },
	markdownBlockquote = { link = "MoonbowGray" },
	markdownListMarker = { link = "MoonbowGray" },
	markdownOrderedListMarker = { link = "MoonbowGray" },
	markdownRule = { link = "MoonbowGray" },
	markdownHeadingRule = { link = "MoonbowGray" },
	markdownUrlDelimiter = { link = "MoonbowFg3" },
	markdownLinkDelimiter = { link = "MoonbowFg3" },
	markdownLinkTextDelimiter = { link = "MoonbowFg3" },
	markdownHeadingDelimiter = { link = "MoonbowOrange" },
	markdownUrl = { link = "MoonbowPurple" },
	markdownUrlTitleDelimiter = { link = "MoonbowGreen" },
	markdownLinkText = { fg = colors.gray, underline = config.underline },
	markdownIdDeclaration = { link = "markdownLinkText" },
	-- haskell
	haskellType = { link = "MoonbowBlue" },
	haskellIdentifier = { link = "MoonbowAqua" },
	haskellSeparator = { link = "MoonbowFg4" },
	haskellDelimiter = { link = "MoonbowOrange" },
	haskellOperators = { link = "MoonbowPurple" },
	haskellBacktick = { link = "MoonbowOrange" },
	haskellStatement = { link = "MoonbowPurple" },
	haskellConditional = { link = "MoonbowPurple" },
	haskellLet = { link = "MoonbowRed" },
	haskellDefault = { link = "MoonbowRed" },
	haskellWhere = { link = "MoonbowRed" },
	haskellBottom = { link = "MoonbowRedBold" },
	haskellImportKeywords = { link = "MoonbowPurpleBold" },
	haskellDeclKeyword = { link = "MoonbowOrange" },
	haskellDecl = { link = "MoonbowOrange" },
	haskellDeriving = { link = "MoonbowPurple" },
	haskellAssocType = { link = "MoonbowAqua" },
	haskellNumber = { link = "MoonbowAqua" },
	haskellPragma = { link = "MoonbowRedBold" },
	haskellTH = { link = "MoonbowAquaBold" },
	haskellForeignKeywords = { link = "MoonbowGreen" },
	haskellKeyword = { link = "MoonbowRed" },
	haskellFloat = { link = "MoonbowAqua" },
	haskellInfix = { link = "MoonbowPurple" },
	haskellQuote = { link = "MoonbowGreenBold" },
	haskellShebang = { link = "MoonbowYellowBold" },
	haskellLiquid = { link = "MoonbowPurpleBold" },
	haskellQuasiQuoted = { link = "MoonbowBlueBold" },
	haskellRecursiveDo = { link = "MoonbowPurple" },
	haskellQuotedType = { link = "MoonbowRed" },
	haskellPreProc = { link = "MoonbowFg4" },
	haskellTypeRoles = { link = "MoonbowRedBold" },
	haskellTypeForall = { link = "MoonbowRed" },
	haskellPatternKeyword = { link = "MoonbowBlue" },
	-- json
	jsonKeyword = { link = "MoonbowGreen" },
	jsonQuote = { link = "MoonbowGreen" },
	jsonBraces = { link = "MoonbowFg1" },
	jsonString = { link = "MoonbowFg1" },
	-- mail
	mailQuoted1 = { link = "MoonbowAqua" },
	mailQuoted2 = { link = "MoonbowPurple" },
	mailQuoted3 = { link = "MoonbowYellow" },
	mailQuoted4 = { link = "MoonbowGreen" },
	mailQuoted5 = { link = "MoonbowRed" },
	mailQuoted6 = { link = "MoonbowOrange" },
	mailSignature = { link = "Comment" },
	-- c#
	csBraces = { link = "MoonbowFg1" },
	csEndColon = { link = "MoonbowFg1" },
	csLogicSymbols = { link = "MoonbowFg1" },
	csParens = { link = "MoonbowFg3" },
	csOpSymbols = { link = "MoonbowFg3" },
	csInterpolationDelimiter = { link = "MoonbowFg3" },
	csInterpolationAlignDel = { link = "MoonbowAquaBold" },
	csInterpolationFormat = { link = "MoonbowAqua" },
	csInterpolationFormatDel = { link = "MoonbowAquaBold" },
	-- rust btw
	rustSigil = { link = "MoonbowOrange" },
	rustEscape = { link = "MoonbowAqua" },
	rustStringContinuation = { link = "MoonbowAqua" },
	rustEnum = { link = "MoonbowAqua" },
	rustStructure = { link = "MoonbowAqua" },
	rustModPathSep = { link = "MoonbowFg2" },
	rustCommentLineDoc = { link = "Comment" },
	rustDefault = { link = "MoonbowAqua" },
	-- ocaml
	ocamlOperator = { link = "MoonbowFg1" },
	ocamlKeyChar = { link = "MoonbowOrange" },
	ocamlArrow = { link = "MoonbowOrange" },
	ocamlInfixOpKeyword = { link = "MoonbowRed" },
	ocamlConstructor = { link = "MoonbowOrange" },
	-- lspsaga.nvim
	LspSagaCodeActionTitle = { link = "Title" },
	LspSagaCodeActionBorder = { link = "MoonbowFg1" },
	LspSagaCodeActionContent = { fg = colors.green, bold = config.bold },
	LspSagaLspFinderBorder = { link = "MoonbowFg1" },
	LspSagaAutoPreview = { link = "MoonbowOrange" },
	TargetWord = { fg = colors.blue, bold = config.bold },
	FinderSeparator = { link = "MoonbowAqua" },
	LspSagaDefPreviewBorder = { link = "MoonbowBlue" },
	LspSagaHoverBorder = { link = "MoonbowOrange" },
	LspSagaRenameBorder = { link = "MoonbowBlue" },
	LspSagaDiagnosticSource = { link = "MoonbowOrange" },
	LspSagaDiagnosticBorder = { link = "MoonbowPurple" },
	LspSagaDiagnosticHeader = { link = "MoonbowGreen" },
	LspSagaSignatureHelpBorder = { link = "MoonbowGreen" },
	SagaShadow = { link = "MoonbowBg0" },

	-- dashboard-nvim
	DashboardShortCut = { link = "MoonbowOrange" },
	DashboardHeader = { link = "MoonbowAqua" },
	DashboardCenter = { link = "MoonbowYellow" },
	DashboardFooter = { fg = colors.purple, italic = config.italic },
	-- mason
	MasonHighlight = { link = "MoonbowAqua" },
	MasonHighlightBlock = { fg = colors.bg0, bg = colors.blue },
	MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.blue, bold = true },
	MasonHighlightSecondary = { fg = colors.yellow },
	MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.yellow },
	MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.yellow, bold = true },
	MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
	MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
	MasonMuted = { fg = colors.fg4 },
	MasonMutedBlock = { fg = colors.bg0, bg = colors.fg4 },
	MasonMutedBlockBold = { fg = colors.bg0, bg = colors.fg4, bold = true },
	-- lsp-inlayhints.nvim
	LspInlayHint = { link = "comment" },
	-- carbon.nvim
	CarbonFile = { link = "MoonbowFg1" },
	CarbonExe = { link = "MoonbowYellow" },
	CarbonSymlink = { link = "MoonbowAqua" },
	CarbonBrokenSymlink = { link = "MoonbowRed" },
	CarbonIndicator = { link = "MoonbowGray" },
	CarbonDanger = { link = "MoonbowRed" },
	CarbonPending = { link = "MoonbowYellow" },

	-- Status Line
	StatusDefault = { bg = colors.bg, fg = colors.fg },
	StatusVimNormal = { bg = colors.accent, fg = colors.bg },
	StatusVimInsert = { bg = colors.neutral_blue, fg = colors.bg },
	StatusVimVisual = { bg = colors.func, fg = colors.bg },
	StatusVimReplace = { fg = colors.bg, bg = colors.entity },
	StatusVimEnter = { fg = colors.bg, bg = colors.string },
	StatusVimMore = { fg = colors.bg, bg = colors.regexp },
	StatusVimSelect = { fg = colors.bg, bg = colors.markup },
	StatusVimCmd = { fg = colors.bg, bg = colors.keyword },
	StatusVimShell = { fg = colors.bg, bg = colors.special },
	StatusVimTerm = { fg = colors.bg, bg = colors.comment },
	StatusModified = { fg = colors.bg, bg = colors.constant },
	StatusLineNumber = { fg = colors.bg, bg = colors.operator },
	StatusColumnNumber = { fg = colors.bg, bg = colors.error },
	StatusFileInfo = { fg = colors.keyword, bg = colors.bg },
	StatusGitInfo = { fg = colors.green, bg = colors.bg },
	StatusLSPProgress = { fg = colors.neutral_blue, bg = colors.bg },
	StatusLSPError = { fg = colors.error, bg = colors.bg },
	StatusLSPWarn = { fg = colors.accent, bg = colors.bg },
	StatusLSPInfo = { fg = colors.entity, bg = colors.bg },
	StatusLSPHin = { fg = colors.tag, bg = colors.bg },
	StatusLSPStatus = { fg = colors.tag, bg = colors.bg },
	StatusCwd = { fg = colors.keyword, bg = colors.bg },
	StatusCursor = { fg = colors.accent, bg = colors.bg },

	-- Session
	SessionName = { fg = colors.string, bg = colors.bg },

	-- Whichkey
	WhichKeyFloat = { fg = colors.fg, bg = colors.bg },

	-- Lazy
	LazyNormal = { fg = colors.fg, bg = colors.bg },
}

return groups
