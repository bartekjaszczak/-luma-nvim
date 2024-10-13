local M = {}

function M.get(style)
    local colour = require("luma.colours")
    local theme = require("luma.theme")
    local settings = {
        -- Medium contrast by default
        theme = style,
        low_contrast_luminance = 50,
        high_contrast_luminance = style == "dark" and 75 or 40,
    }
    theme = theme.get_theme(colour, settings)

    local bbq = {
        normal = { fg = theme.ui.fg },

        ellipsis = { fg = theme.ui.fg },
        separator = { fg = theme.ui.accent_weak, bold = true },
        modified = { fg = theme.diag.warn.fg },

        dirname = { fg = theme.ui.accent_weak },
        basename = { fg = theme.ui.accent_strong, bold = true },
        context = { fg = theme.ui.fg },

        context_file = { fg = theme.ui.fg },
        context_module = { fg = theme.syntax.namespace },
        context_namespace = { fg = theme.syntax.namespace },
        context_package = { fg = theme.syntax.namespace },
        context_class = { fg = theme.syntax.type },
        context_method = { fg = theme.syntax.method },
        context_property = { fg = theme.syntax.field },
        context_field = { fg = theme.syntax.field },
        context_constructor = { fg = theme.syntax.method },
        context_enum = { fg = theme.syntax.type },
        context_interface = { fg = theme.syntax.type },
        context_function = { fg = theme.syntax.func },
        context_variable = { fg = theme.syntax.variable },
        context_constant = { fg = theme.syntax.constant },
        context_string = { fg = theme.syntax.string },
        context_number = { fg = theme.syntax.number },
        context_boolean = { fg = theme.syntax.boolean },
        context_array = { fg = theme.syntax.variable },
        context_object = { fg = theme.syntax.variable },
        context_key = { fg = theme.syntax.field },
        context_null = { fg = theme.syntax.keyword },
        context_enum_member = { fg = theme.syntax.constant },
        context_struct = { fg = theme.syntax.type },
        context_event = { fg = theme.syntax.type },
        context_type_parameter = { fg = theme.syntax.constant },
        context_operator = { fg = theme.syntax.operator },
    }

    return bbq
end

return M
