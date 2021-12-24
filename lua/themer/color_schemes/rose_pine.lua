local util = require("themer.utils.colors")

local colors = {
    flavour = "dark", -- set type of colorscheme: dark/light
    bg = "#191724", -- background
    bg_alt = "#1f1d2e", -- alternate background
    bg_float = "#26233a", -- for floating windows and statuslines and pum sidebar and pum selected and CursorColumn
    inactive = "#555169", -- for stuff like empty folder(any inactive stuff)
    subtle = "#6e6a86", -- for comments and float border and more...
    fg = "#e0def4", -- the foreground/text color
    red = "#eb6f92", -- for errors
    yellow = "#f6c177", -- for warns
    orange = "#ebbcba", -- mostly for booleans
    blue = "#31748f", -- for keywords
    green = "#9ccfd8", -- for info and constructors/labels and diffadd
    magenta = "#c4a7e7", -- for hints and visual mode/search foreground/special comments/git stage and merge
    highlight = "#2a2837", -- ofc for highlighting (it is the bg of highlighted text)
    highlight_inactive = "#211f2d", -- same as highlight for inactive stuff and also cursor line
    highlight_overlay = "#3a384a", -- same as highlight for overlays (floats)
    none = "NONE",
}

-- Copied directly from https://github.com/orange-blue/neovim/
colors.remaps = {
	ColorColumn = { bg = colors.highlight_bg_float },
	Conceal = { bg = colors.none },
	CursorColumn = { bg = colors.highlight_inactive },
	CursorLine = { bg = colors.highlight },
	CursorLineNr = { fg = colors.fg },
	DarkenedPanel = { bg = colors.bg_alt },
	DarkenedStatusline = { bg = colors.bg_alt },
	DiffAdd = { bg = util.blend(colors.green, colors.bg, 0.1) },
	DiffChange = { bg = util.blend(colors.orange, colors.bg, 0.1) },
	DiffDelete = { bg = util.blend(colors.red, colors.bg, 0.1) },
	DiffText = { bg = util.blend(colors.subtle, colors.bg, 0.1) },
	diffAdded = { link = 'DiffAdd' },
	diffChanged = { link = 'DiffChange' },
	diffRemoved = { link = 'DiffDelete' },
	Directory = { fg = colors.green, bg = colors.none },
	ErrorMsg = { fg = colors.red, style = 'bold' },
	FloatBorder = { fg = colors.subtle },
	FoldColumn = {},
	Folded = { fg = colors.fg, bg = colors.bg_alt },
	IncSearch = { bg = colors.highlight_inactive },
	LineNr = { fg = colors.inactive },
	MatchParen = { fg = colors.fg, bg = colors.highlight_inactive },
	ModeMsg = { fg = colors.subtle },
	MoreMsg = { fg = colors.magenta },
	NonText = { fg = colors.inactive },
	PmenuSbar = { bg = colors.bg_float },
	PmenuSel = { fg = colors.fg, bg = colors.bg_float },
	PmenuThumb = { bg = colors.inactive },
	Question = { fg = colors.yellow },
	-- QuickFixLine = {},
	Search = { fg = colors.magenta, bg = colors.highlight_bg_float },
	SpecialKey = { fg = colors.green },
	SpellBad = { style = 'undercurl', sp = colors.red },
	SpellCap = { style = 'undercurl', sp = colors.subtle },
	SpellLocal = { style = 'undercurl', sp = colors.subtle },
	SpellRare = { style = 'undercurl', sp = colors.subtle },
	StatusLine = { fg = colors.fg, bg = colors.bg_alt },
	StatusLineNC = { fg = colors.subtle, bg = colors.bg_alt },
	-- StatusLineTerm = {},
	-- StatusLineTermNC = {},
	TabLine = { fg = colors.subtle, bg = colors.bg_float },
	TabLineFill = { bg = colors.bg_alt },
	TabLineSel = { fg = colors.fg, bg = colors.inactive },
	Title = { fg = colors.fg },
	Visual = { bg = colors.highlight_inactive },
	-- VisualNOS = {},
	WarningMsg = { fg = colors.yellow },
	-- Whitespace = {},
	-- WildMenu = {},

	Boolean = { fg = colors.yellow },
	Character = { fg = colors.yellow },
	Conditional = { fg = colors.blue },
	Constant = { fg = colors.yellow },
	Debug = { fg = colors.orange },
	Define = { fg = colors.magenta },
	Delimiter = { fg = colors.subtle },
	Error = { fg = colors.red },
	Exception = { fg = colors.blue },
	Float = { fg = colors.yellow },
	Function = { fg = colors.orange },
	Identifier = { fg = colors.orange },
	-- Ignore = { fg = '' },
	Include = { fg = colors.magenta },
	Keyword = { fg = colors.blue },
	Label = { fg = colors.green },
	Macro = { fg = colors.magenta },
	Number = { fg = colors.yellow },
	Operator = { fg = colors.subtle },
	PreCondit = { fg = colors.magenta },
	PreProc = { fg = colors.magenta },
	Repeat = { fg = colors.blue },
	Special = { fg = colors.orange },
	SpecialChar = { fg = colors.orange },
	SpecialComment = { fg = colors.magenta },
	Statement = { fg = colors.blue },
	StorageClass = { fg = colors.green },
	String = { fg = colors.yellow },
	Structure = { fg = colors.green },
	Tag = { fg = colors.orange },
	Todo = { fg = colors.magenta },
	Type = { fg = colors.green },
	Typedef = { fg = colors.green },
	Underlined = { fg = colors.green, style = 'underline' },

	htmlArg = { fg = colors.magenta },
	htmlBold = { fg = colors.fg, style = 'bold' },
	htmlEndTag = { fg = colors.subtle },
	htmlItalic = { fg = colors.fg, style = "italic" },
	htmlLink = { fg = colors.fg },
	htmlTag = { fg = colors.subtle },
	htmlTagN = { fg = colors.fg },
	htmlTagName = { fg = colors.green },

	markdownDelimiter = { fg = colors.subtle },
	markdownLinkText = { fg = colors.magenta, style = 'underline' },
	markdownUrl = { fg = colors.magenta, style = 'underline' },
	mkdCode = { fg = colors.green, style = "italic" },
	mkdCodeDelimiter = { fg = colors.orange },
	mkdCodeEnd = { fg = colors.green },
	mkdCodeStart = { fg = colors.green },
	mkdFootnotes = { fg = colors.green },
	mkdID = { fg = colors.green, style = 'underline' },
	mkdInlineURL = { fg = colors.green, style = 'underline' },
	mkdLink = { fg = colors.orange, style = 'bold' },
	mkdLinkDef = { fg = colors.orange, style = 'bold' },
	mkdListItemLine = { fg = colors.fg },
	mkdRule = { fg = colors.subtle },
	mkdURL = { fg = colors.green, style = 'underline' },

	-- Fix background mismatch if user sets custom float background
	-- In LSP hover float: (paramater)
	--                     ^         ^
	typescriptParens = { bg = colors.none },

	LspReferenceText = { fg = colors.orange, bg = colors.highlight_inactive },
	LspReferenceRead = { fg = colors.orange, bg = colors.highlight_inactive },
	LspReferenceWrite = { fg = colors.orange, bg = colors.highlight_inactive },

	-- RedrawDebugNormal
	RedrawDebugClear = { fg = '#ffffff', bg = colors.yellow },
	RedrawDebugComposed = { fg = '#ffffff', bg = colors.blue },
	RedrawDebugRecompose = { fg = '#ffffff', bg = colors.red },

	NvimInternalError = { fg = '#ffffff', bg = colors.red },

	-- TSAnnotation = {},
	-- TSAttribute = {},
	TSBoolean = { fg = colors.orange },
	-- TSCharacter = {},
	-- TSConditional = {},
	TSConstBuiltin = { fg = colors.red },
	-- TSConstMacro = {},
	TSConstant = { fg = colors.green },
	TSConstructor = { fg = colors.green },
	-- TSEmphasis = {},
	-- TSError = {},
	-- TSException = {},
	TSField = { fg = colors.green },
	-- TSFloat = {},
	TSFuncBuiltin = { fg = colors.red },
	-- TSFuncMacro = {},
	TSFunction = { fg = colors.orange },
	TSInclude = { fg = colors.blue },
	TSKeyword = { fg = colors.blue },
	-- TSKeywordFunction = {},
	TSKeywordOperator = { fg = colors.blue },
	TSLabel = { fg = colors.green },
	-- TSLiteral = {},
	-- TSMethod = {},
	-- TSNamespace = {},
	-- TSNone = {},
	-- TSNumber = {},
	TSOperator = { fg = colors.blue },
	TSParameter = {
		fg = colors.magenta,
		style = "italic",
	},
	-- TSParameterReference = {},
	TSProperty = {
		fg = colors.magenta,
		style = "italic",
	},
	-- TSRepeat = {},
	-- TSStrike = {},
	TSString = { fg = colors.yellow },
	TSStringEscape = { fg = colors.blue },
	-- TSStringRegex = {},
	-- TSSymbol = {},
	TSTag = { fg = colors.green },
	TSTagDelimiter = { fg = colors.subtle },
	TSText = { fg = colors.fg },
	-- TSType = {},
	-- TSTypeBuiltin = {},
	TSURI = { fg = colors.yellow },
	-- TSUnderline = {},
	TSVariable = {
		fg = colors.fg,
		style = "italic",
	},
	TSVariableBuiltin = { fg = colors.red },

	-- barbar.nvim
	-- https://github.com/romgrk/barbar.nvim
	BufferTabpageFill = { fg = colors.bg, bg = colors.bg },
	BufferCurrent = { fg = colors.fg, bg = colors.bg_float },
	BufferCurrentIndex = { fg = colors.fg, bg = colors.bg_float },
	BufferCurrentMod = { fg = colors.green, bg = colors.bg_float },
	BufferCurrentSign = { fg = colors.subtle, bg = colors.bg_float },
	BufferInactive = { fg = colors.subtle },
	BufferInactiveIndex = { fg = colors.subtle },
	BufferInactiveMod = { fg = colors.green },
	BufferInactiveSign = { fg = colors.inactive },
	BufferVisible = { fg = colors.subtle },
	BufferVisibleIndex = { fg = colors.subtle },
	BufferVisibleMod = { fg = colors.green },
	BufferVisibleSign = { fg = colors.inactive },

	-- gitsigns.nvim
	-- https://github.com/lewis6991/gitsigns.nvim
	SignAdd = { fg = colors.green },
	SignChange = { fg = colors.orange },
	SignDelete = { fg = colors.red },
	GitSignsAdd = { fg = colors.green },
	GitSignsChange = { fg = colors.orange },
	GitSignsDelete = { fg = colors.red },

	-- modes.nvim
	-- https://github.com/mvllow/modes.nvim
	ModesCopy = { bg = colors.yellow },
	ModesDelete = { bg = colors.red },
	ModesInsert = { bg = colors.green },
	ModesVisual = { bg = colors.magenta },

	-- nvim-tree.lua
	-- https://github.com/kyazdani42/nvim-tree.lua
	NvimTreeNormal = { fg = colors.fg },
	NvimTreeFileDeleted = { fg = colors.red },
	NvimTreeFileDirty = { fg = colors.orange },
	NvimTreeFileMerge = { fg = colors.magenta },
	NvimTreeFileNew = { fg = colors.green },
	NvimTreeFileRenamed = { fg = colors.blue },
	NvimTreeFileStaged = { fg = colors.magenta },
	NvimTreeEmptyFolderName = { fg = colors.inactive },
	NvimTreeFolderIcon = { fg = colors.subtle },
	NvimTreeFolderName = { fg = colors.green },
	NvimTreeImageFile = { fg = colors.fg },
	NvimTreeOpenedFile = { fg = colors.fg, bg = colors.highlight_inactive },
	NvimTreeOpenedFolderName = { fg = colors.green },
	NvimTreeRootFolder = { fg = colors.magenta },
	NvimTreeSpecialFile = { link = 'NvimTreeNormal' },
	NvimTreeGitDeleted = { fg = colors.red },
	NvimTreeGitDirty = { fg = colors.orange },
	NvimTreeGitIgnored = { fg = colors.subtle },
	NvimTreeGitMerge = { fg = colors.magenta },
	NvimTreeGitNew = { fg = colors.green },
	NvimTreeGitRenamed = { fg = colors.blue },
	NvimTreeGitStaged = { fg = colors.magenta },
	NvimTreeWindowPicker = { fg = colors.bg, bg = colors.magenta },

	-- which-key.nvim
	-- https://github.com/folke/which-key.nvim
	WhichKey = { fg = colors.magenta },
	WhichKeyGroup = { fg = colors.green },
	WhichKeySeparator = { fg = colors.subtle },
	WhichKeyDesc = { fg = colors.yellow },
	WhichKeyFloat = { bg = colors.bg_alt },
	WhichKeyValue = { fg = colors.orange },

	-- indent-blankline.nvim
	-- https://github.com/lukas-reineke/indent-blankline.nvim
	IndentBlanklineChar = { fg = colors.subtle },

	-- nvim-cmp
	-- https://github.com/hrsh7th/nvim-cmp
	CmpItemKind = { fg = colors.magenta },
	CmpItemAbbr = { fg = colors.subtle },
	CmpItemAbbrMatch = { fg = colors.fg, style = 'bold' },
	CmpItemAbbrMatchFuzzy = { fg = colors.fg, style = 'bold' },
	CmpItemAbbrDeprecated = { fg = colors.subtle, style = 'strikethrough' },
	CmpItemKindVariable = { fg = colors.green },
	CmpItemKindClass = { fg = colors.yellow },
	CmpItemKindInterface = { fg = colors.yellow },
	CmpItemKindFunction = { fg = colors.magenta },
	CmpItemKindMethod = { fg = colors.magenta },
	CmpItemKindSnippet = { fg = colors.magenta },

	-- neogit
	-- https://github.com/TimUntersberger/neogit
	NeogitDiffAddHighlight = { fg = colors.green, bg = colors.highlight_inactive },
	NeogitDiffDeleteHighlight = {
		fg = colors.red,
		bg = colors.highlight_inactive,
	},
	NeogitDiffConfgHighlight = { bg = colors.highlight },
	NeogitHunkHeader = { bg = colors.highlight },
	NeogitHunkHeaderHighlight = { bg = colors.highlight },

	-- Neorg
	-- https://github.com/nvim-neorg/neorg

	NeorgMarkerTitle = { fg = colors.fg, style = 'bold' },
	-- LspSaga
	-- https://github.com/tami5/lspsaga.nvim (fork of https://github.com/glepnir/lspsaga.nvim)
	LspSagaCodeActionTitle = {
		fg = colors.yellow,
		style = 'bold',
	},
	LspSagaCodeActionBorder = { fg = colors.subtle },
	LspSagaCodeActionTruncateLine = { link = 'LspSagaCodeActionBorder' },
	LspSagaCodeActionContent = { fg = colors.green },
	LspSagaDiagnosticBorder = { fg = colors.subtle },
	LspSagaDiagnosticHeader = {
		fg = colors.yellow,
		style = 'bold',
	},
	LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
	LspSagaFinderSelection = { fg = colors.yellow },
	LspSagaLspFinderBorder = { fg = colors.subtle },
	LspSagaAutoPreview = { fg = colors.subtle },
	LspSagaDefPreviewBorder = { fg = colors.subtle },
	DefinitionIcon = { fg = colors.orange },
	DefinitionCount = { fg = colors.orange },
	ReferencesCount = { fg = colors.orange },
	ReferencesIcon = { fg = colors.orange },
	DefintionPreviewTitle = {
		fg = colors.orange,
		style = 'bold',
	},
	LspSagaRenamePromptPrefix = { fg = colors.red },
	LspSagaRenameBorder = { fg = colors.blue },
	LspFloatWinNormal = { bg = colors.bg },
	LspFloatWinBorder = { fg = colors.subtle },
	LspSagaDocTruncateLine = { link = 'LspSagaHoverBorder' },
	LspSagaHoverBorder = { fg = colors.subtle },
	LspSagaSignatureHelpBorder = { fg = colors.blue },
	LspSagaShTruncateLine = { link = 'LspSagaSignatureHelpBorder' },
	TargetWord = { fg = colors.magenta },

	SagaShadow = { bg = colors.bg_float },
}

return colors
