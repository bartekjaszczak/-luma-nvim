local M = {}
local setup_done = false

local default_settings = {
    theme = "dark",          -- dark or light
    contrast = "medium",     -- low, medium or high
}

local function set_highlights(theme)
    local highlights = require("luma.highlights").get_highlights(theme)
    for hl, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, hl, opts)
    end
end

M.settings = {
    theme = "",
    contrast = "",
}
M.internal = {
    low_contrast_luminance = 50,
    high_contrast_luminance = 50,
}

function M.setup(settings)
    M.settings = vim.tbl_deep_extend("force", default_settings, settings or {})

    if M.settings.theme ~= "light" and M.settings.theme ~= "dark" then
        M.settings.theme = default_settings.theme
    end

    if M.settings.contrast ~= "low" and M.settings.contrast ~= "medium" and M.settings.contrast ~= "high" then
        M.settings.contrast = default_settings.contrast
    end

    if M.settings.theme == "light" then
        if M.settings.contrast == "low" then
            M.internal.low_contrast_luminance = 60
            M.internal.high_contrast_luminance = 75
        elseif M.settings.contrast == "medium" then
            M.internal.low_contrast_luminance = 50
            M.internal.high_contrast_luminance = 40
        else
            M.internal.low_contrast_luminance = 40
            M.internal.high_contrast_luminance = 30
        end
    else
        if M.settings.contrast == "low" then
            M.internal.low_contrast_luminance = 40
            M.internal.high_contrast_luminance = 60
        elseif M.settings.contrast == "medium" then
            M.internal.low_contrast_luminance = 50
            M.internal.high_contrast_luminance = 75
        else
            M.internal.low_contrast_luminance = 60
            M.internal.high_contrast_luminance = 90
        end
    end

    setup_done = true
end

function M.load()
    -- Reset colour scheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    -- Settings
    vim.o.termguicolors = true
    vim.g.colors_name = "luma"

    if not setup_done then
        M.setup()
    end

    local all_settings = vim.tbl_deep_extend("force", M.settings, M.internal)

    -- Enable highlights
    local colours = require("luma.colours")
    local theme = require("luma.theme")
    theme = theme.get_theme(colours, all_settings)

    set_highlights(theme)
end

return M
