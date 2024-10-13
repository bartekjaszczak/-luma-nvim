local M = {}

function M.get(style)
    local colour = require("luma.colours")
    local theme = require("luma.theme")
    local settings = {
        -- Medium contrast by default
        theme = style,
    }
    theme = theme.get_theme(colour, settings)

    local lualine = {}
    lualine.normal = {
        a = { bg = theme.syntax.h1, fg = theme.ui.bg_neutral, gui = "bold" },
        b = { bg = theme.ui.bg_weak, fg = theme.syntax.h1 },
        c = { bg = theme.ui.bg_strong, fg = theme.ui.fg, gui = "bold" },
    }

    lualine.insert = {
        a = { bg = theme.syntax.h2, fg = theme.ui.bg_neutral, gui = "bold" },
        b = { bg = theme.ui.bg_weak, fg = theme.syntax.h2 },
    }

    lualine.command = {
        a = { bg = theme.syntax.h4, fg = theme.ui.bg_neutral, gui = "bold" },
        b = { bg = theme.ui.bg_weak, fg = theme.syntax.h4 },
    }

    lualine.visual = {
        a = { bg = theme.syntax.h6, fg = theme.ui.bg_neutral, gui = "bold" },
        b = { bg = theme.ui.bg_weak, fg = theme.syntax.h6 },
    }

    lualine.replace = {
        a = { bg = theme.syntax.h5, fg = theme.ui.bg_neutral, gui = "bold" },
        b = { bg = theme.ui.bg_weak, fg = theme.syntax.h5 },
    }

    lualine.terminal = {
        a = { bg = theme.syntax.h3, fg = theme.ui.bg_neutral, gui = "bold" },
        b = { bg = theme.ui.bg_weak, fg = theme.syntax.h3 },
    }

    lualine.inactive = {
        a = { bg = theme.ui.grey_weak, fg = theme.ui.bg_neutral, gui = "bold" },
        b = { bg = theme.ui.bg_weak, fg = theme.ui.grey_weak },
        c = { bg = theme.ui.bg_strong, fg = theme.ui.grey_strong },
    }

    return lualine
end

return M
