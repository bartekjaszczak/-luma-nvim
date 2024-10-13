local M = {}

function M.get_theme(colours, settings)
    local is_dark = settings.theme == "dark"
    if not settings.low_contrast_luminance then
        settings.low_contrast_luminance = 50
    end
    if not settings.high_contrast_luminance then
        settings.high_contrast_luminance = is_dark and 75 or 40
    end

    local is_low_contrast = settings.contrast == "low"
    local is_high_contrast = settings.contrast == "high"

    -- Accent colours
    local low_contrast = colours.accent[settings.low_contrast_luminance]
    local high_contrast = colours.accent[settings.high_contrast_luminance]

    -- Greys
    local grey_low_contrast = is_dark and colours.base.dark_grey or colours.base.light_grey
    local grey_high_contrast = is_dark and colours.base.light_grey or colours.base.dark_grey

    -- Highlight
    local highlight = is_dark and colours.base.dark_highlight or colours.base.light_highlight

    -- Backgrounds
    local bg_0 = is_dark and colours.base.dark_0 or colours.base.light_0
    local bg_1 = is_dark and colours.base.dark_1 or colours.base.light_1
    local bg_2 = is_dark and colours.base.dark_2 or colours.base.light_2

    -- Foreground
    local fg = is_dark and colours.base.light_1 or colours.base.dark_1
    if is_low_contrast then
        fg = is_dark and colours.base.light_0 or colours.base.dark_0
    elseif is_high_contrast then
        fg = is_dark and colours.base.light_2 or colours.base.dark_2
    end

    -- UI accents (always "medium" contrast)
    -- It's made this way so it's not dependent on settings
    -- barbecue and lualine will make use of these
    local ui_low_contrast = colours.accent[50]
    local ui_high_contrast = is_dark and colours.accent[75] or colours.accent[40]

    return {
        none = "NONE",

        -- UI elements
        ui = {
            bg_weak = bg_0,
            bg_neutral = bg_1,
            bg_strong = bg_2,

            fg = fg,

            grey_weak = grey_low_contrast,
            grey_strong = grey_high_contrast,

            highlight = highlight,

            accent_weak = ui_low_contrast.yellow,
            accent_strong = ui_high_contrast.yellow,

            secondary_accent_weak = ui_low_contrast.violet,
            secondary_accent_strong = ui_high_contrast.violet,
        },

        diag = {
            error = {
                fg = low_contrast.red,
                bg = bg_0,
            },
            warn = {
                fg = low_contrast.orange,
                bg = bg_0,
            },
            info = {
                fg = low_contrast.lightgreen,
                bg = bg_0,
            },
            hint = {
                fg = low_contrast.blue,
                bg = bg_0,
            },
            ok = {
                fg = low_contrast.green,
            },
        },

        git = {
            add = high_contrast.lightgreen,
            change = high_contrast.yellow,
            delete = high_contrast.red,
        },

        suggestions = high_contrast.orange,

        syntax = {
            text = fg,
            comment = grey_high_contrast,
            comment_special = grey_high_contrast,

            string = low_contrast.lightgreen,
            char = low_contrast.lightgreen,
            stringspecial = low_contrast.orange,

            constant = high_contrast.lightgreen,
            enummember = high_contrast.lightgreen,

            number = high_contrast.pink,
            boolean = high_contrast.pink,

            variable = fg,
            param = high_contrast.green,
            field = high_contrast.blue,
            global = high_contrast.red,
            static = high_contrast.violet,

            func = low_contrast.pink,
            method = low_contrast.teal,

            statement = low_contrast.red,
            keyword = low_contrast.red,
            keyword_flow = low_contrast.violet,
            operator = fg,

            preproc = low_contrast.blue,

            type = high_contrast.yellow,
            type_builtin = high_contrast.yellow,

            special = low_contrast.orange,

            debug = low_contrast.orange,
            error = low_contrast.red,
            todo = low_contrast.lightgreen,

            bracket = fg,
            delimiter = fg,

            label = high_contrast.violet,
            namespace = low_contrast.yellow,
            module = low_contrast.yellow,
            builtin = high_contrast.orange,
            tag = low_contrast.orange,
            attribute = high_contrast.violet,

            h1 = high_contrast.yellow,
            h2 = low_contrast.red,
            h3 = low_contrast.green,
            h4 = low_contrast.violet,
            h5 = low_contrast.orange,
            h6 = low_contrast.blue,
            link = high_contrast.blue,
        },
    }
end

return M
