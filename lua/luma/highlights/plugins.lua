local M = {}

function M.get_highlights(theme)
    return {
        -- Copilot
        CopilotAnnotation = { fg = theme.suggestions },
        CopilotSuggestion = { fg = theme.suggestions },

        -- GitSigns
        GitSignsAdd = { fg = theme.git.add },
        GitSignsChange = { fg = theme.git.change },
        GitSignsDelete = { fg = theme.git.delete },

        -- Indent-blankline
        IndentBlanklineChar = { fg = theme.ui.bg_weak },
        IndentBlanklineSpaceChar = { fg = theme.ui.bg_weak },
        IndentBlanklineSpaceCharBlankline = { fg = theme.ui.bg_weak },
        IndentBlanklineContextChar = { fg = theme.syntax.special },
        IndentBlanklineContextStart = { sp = theme.syntax.special, underline = true },
        IblIndent = { fg = theme.ui.bg_weak },
        IblWhitespace = { fg = theme.ui.bg_weak },
        IblScope = { fg = theme.syntax.special },

        -- Lsp-signature
        LspSignatureActiveParameter = { bg = theme.diag.warn.fg, fg = theme.ui.bg_neutral, bold = true },

        -- Mason
        MasonHeader = { fg = theme.ui.accent_strong },
        MasonHeaderSecondary = { fg = theme.ui.secondary_accent_strong },
        MasonHeading = { fg = theme.ui.fg },

        MasonHighlight = { fg = theme.ui.accent_strong },
        MasonHighlightBlock = { fg = theme.ui.accent_strong, bg = theme.ui.grey_weak },
        MasonHighlightBlockBold = { fg = theme.ui.accent_strong, bg = theme.ui.grey_weak, bold = true },
        MasonHighlightBlockBoldSecondary = {
            fg = theme.ui.secondary_accent_strong,
            bg = theme.ui.grey_weak,
            bold = true,
        },
        MasonHighlightBlockSecondary = { fg = theme.ui.secondary_accent_strong, bg = theme.ui.grey_weak },
        MasonHighlightSecondary = { fg = theme.ui.secondary_accent_strong },

        MasonMuted = { fg = theme.syntax.link },
        MasonMutedBlock = { fg = theme.syntax.link, bg = theme.ui.grey_weak },
        MasonMutedBlockBold = { fg = theme.syntax.special, bg = theme.ui.grey_weak, bold = true },

        MasonNormal = { bg = theme.ui.bg_weak },
        MasonWarning = { link = "WarningMsg" },
        MasonError = { link = "ErrorMsg" },
        MasonLink = { link = "MasonHighlight" },

        -- Nvim-bfq
        -- BqfPreviewFloat = {},
        BqfPreviewBorder = { fg = theme.ui.accent_weak, bg = theme.ui.bg_neutral },
        -- BqfPreviewTitle = {},
        -- BqfPreviewThumb = {},
        -- BqfPreviewSbar = {},
        -- BqfPreviewCursor = {},
        -- BqfPreviewCursorLine = {},
        -- BqfPreviewRange = {},
        -- BqfPreviewBufLabel = {},
        -- BqfSign = {},

        -- Nvim-cmp
        CmpDocumentation = { link = "NormalFloat" },
        CmpDocumentationBorder = { link = "FloatBorder" },
        CmpGhostText = { link = "FloatBorder" },
        CmpCompletion = { link = "Pmenu" },
        CmpCompletionSel = { link = "PmenuSel" },
        CmpCompletionBorder = { link = "CmpDocumentationBorder" },
        CmpCompletionThumb = { link = "PmenuThumb" },
        CmpCompletionSbar = { link = "PmenuSbar" },
        CmpItemAbbr = { fg = theme.ui.fg },
        CmpItemAbbrDeprecated = { fg = theme.ui.grey_strong, strikethrough = true },
        CmpItemAbbrMatch = { fg = theme.diag.error.fg, bold = true },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemKindDefault = { fg = theme.ui.fg },
        CmpItemMenu = { fg = theme.ui.fg },

        CmpItemKind = { fg = theme.ui.fg }, -- Default

        CmpItemKindClass = { link = "Type" },
        -- CmpItemKindColor = {},
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindConstructor = { link = "@constructor" },
        CmpItemKindEnum = { link = "Type" },
        CmpItemKindEnumMember = { link = "Constant" },
        -- CmpItemKindEvent = {},
        CmpItemKindField = { link = "@field" },
        CmpItemKindFile = { link = "Directory" },
        CmpItemKindFolder = { link = "Directory" },
        CmpItemKindFunction = { link = "Function" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindKeyword = { link = "@keyword" },
        CmpItemKindMethod = { link = "@method" },
        CmpItemKindModule = { link = "@include" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindProperty = { link = "@property" },
        CmpItemKindReference = { link = "Type" },
        CmpItemKindSnippet = { fg = theme.diag.error.fg },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindText = { fg = theme.ui.fg },
        CmpItemKindTypeParameter = { link = "Type" },
        CmpItemKindUnit = {},
        CmpItemKindValue = { link = "String" },
        CmpItemKindVariable = { link = "" },

        CmpItemKindCopilot = { fg = theme.suggestions },
        CmpItemKindCodeium = { fg = theme.suggestions },
        CmpItemKindTabNine = { fg = theme.suggestions },

        -- Local-highlight.nvim
        LocalHighlight = { bg = theme.ui.highlight },

        -- Nvim-spectre
        SpectreBody = { link = "WinSeparator" },
        SpectreBorder = { link = "FloatBorder" },
        SpectreDir = { link = "Directory" },
        SpectreFile = { link = "FloatTitle" },
        SpectreHeader = { link = "Comment" },
        SpectreReplace = { link = "DiffAdd" },
        SpectreSearch = { link = "DiffDelete" },

        -- Nvim-surround
        -- NvimSurroundHighlight = { link = "Visual" },

        -- Symbols-outline
        FocusedSymbol = { fg = theme.diag.info.fg, bg = theme.diag.info.bg },
        SymbolsOutlineConnector = { fg = theme.ui.accent_weak },

        -- Telescope
        TelescopeNormal = { fg = theme.ui.fg, bg = theme.ui.bg_neutral },
        TelescopeBorder = { link = "Normal" },
        TelescopeSelection = { link = "IncSearch" },
        TelescopeSelectionCaret = { link = "IncSearch" },
        TelescopeResultsClass = { link = "Type" },
        TelescopeResultsStruct = { link = "Type" },
        TelescopeResultsField = { link = "@field" },
        TelescopeResultsMethod = { link = "@method" },
        TelescopeResultsVariable = { link = "@variable" },
        TelescopeMatching = { fg = theme.diag.error.fg, bold = true },

        -- Todo-comments
        Todo = { link = "TodoBgTODO" },
        TodoFgTODO = { fg = theme.diag.info.fg },
        TodoBgTODO = { fg = theme.ui.bg_neutral, bg = theme.diag.info.fg },
        TodoSignTODO = { fg = theme.diag.info.fg, bg = theme.ui.bg_neutral },
        TodoFgFIX = { fg = theme.diag.error.fg },
        TodoBgFIX = { fg = theme.ui.bg_neutral, bg = theme.diag.error.fg },
        TodoSignFIX = { fg = theme.diag.error.fg, bg = theme.ui.bg_neutral },
        TodoFgHACK = { fg = theme.diag.warn.fg },
        TodoBgHACK = { fg = theme.ui.bg_neutral, bg = theme.diag.warn.fg },
        TodoSignHACK = { fg = theme.diag.warn.fg, bg = theme.ui.bg_neutral },
        TodoFgNOTE = { fg = theme.diag.hint.fg },
        TodoBgNOTE = { fg = theme.ui.bg_neutral, bg = theme.diag.hint.fg },
        TodoSignNOTE = { fg = theme.diag.hint.fg, bg = theme.ui.bg_neutral },
        TodoFgPERF = { fg = theme.diag.warn.fg },
        TodoBgPERF = { fg = theme.ui.bg_neutral, bg = theme.diag.warn.fg },
        TodoSignPERF = { fg = theme.diag.warn.fg, bg = theme.ui.bg_neutral },
        TodoFgTEST = { fg = theme.diag.hint.fg },
        TodoBgTEST = { fg = theme.ui.bg_neutral, bg = theme.diag.hint.fg },
        TodoSignTEST = { fg = theme.diag.hint.fg, bg = theme.ui.bg_neutral },
        TodoFgWARN = { fg = theme.diag.warn.fg },
        TodoBgWARN = { fg = theme.ui.bg_neutral, bg = theme.diag.warn.fg },
        TodoSignWARN = { fg = theme.diag.warn.fg, bg = theme.ui.bg_neutral },

        -- Treesitter-context
        -- TreesitterContext = {},
        TreesitterContextLineNumber = { fg = theme.ui.accent_weak },
        -- TreesitterContextBottom = {},

        -- Undotree
        UndotreeBranch = { fg = theme.diag.ok.fg },
        UndotreeCurrent = { fg = theme.diag.error.fg, bold = true },
        UndotreeFirstNode = { fg = theme.diag.hint.fg },
        UndotreeHead = { fg = theme.diag.hint.fg, bold = true },
        UndotreeHelp = { fg = theme.ui.accent_weak },
        UndotreeHelpKey = { fg = theme.diag.warn.fg },
        UndotreeHelpTitle = { fg = theme.diag.error.fg },
        UndotreeNext = { fg = theme.diag.error.fg },
        UndotreeNode = { fg = theme.diag.ok.fg },
        UndotreeNodeCurrent = { fg = theme.diag.error.fg, bold = true },
        UndotreeSavedBig = { fg = theme.diag.warn.fg, bold = true },
        UndotreeSavedSmall = { fg = theme.diag.warn.fg },
        UndotreeSeq = { fg = theme.ui.accent_weak },
        UndotreeTimeStamp = { fg = theme.ui.grey_strong },

        -- Render-markdown
        RenderMarkdownH1 = { fg = theme.syntax.h1, bg = theme.ui.bg_neutral },
        RenderMarkdownH1Bg = { bg = theme.syntax.h1, fg = theme.ui.bg_neutral },
        RenderMarkdownH2 = { fg = theme.syntax.h2, bg = theme.ui.bg_neutral },
        RenderMarkdownH2Bg = { bg = theme.syntax.h2, fg = theme.ui.bg_neutral },
        RenderMarkdownH3 = { fg = theme.syntax.h3, bg = theme.ui.bg_neutral },
        RenderMarkdownH3Bg = { bg = theme.syntax.h3, fg = theme.ui.bg_neutral },
        RenderMarkdownH4 = { fg = theme.syntax.h4, bg = theme.ui.bg_neutral },
        RenderMarkdownH4Bg = { bg = theme.syntax.h4, fg = theme.ui.bg_neutral },
        RenderMarkdownH5 = { fg = theme.syntax.h5, bg = theme.ui.bg_neutral },
        RenderMarkdownH5Bg = { bg = theme.syntax.h5, fg = theme.ui.bg_neutral },
        RenderMarkdownH6 = { fg = theme.syntax.h6, bg = theme.ui.bg_neutral },
        RenderMarkdownH6Bg = { bg = theme.syntax.h6, fg = theme.ui.bg_neutral },
    }
end

return M
