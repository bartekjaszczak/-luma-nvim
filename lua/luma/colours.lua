local colours = {
    base = {
        dark_2 = "#0d0700",       -- Lab(2, 0, 5)
        dark_1 = "#201d17",       -- Lab(11, 0, 5)
        dark_0 = "#333029",       -- Lab(20, 0, 5)

        dark_highlight = "#48443d",-- Lab(29, 0, 5)

        dark_grey = "#625e56",    -- Lab(40, 0, 5)

        light_grey = "#949088",   -- Lab(60, 0, 5)

        light_highlight = "#c2beb5",-- Lab(77, 0, 5)

        light_0 = "#d6d1c8",      -- Lab(84, 0, 5)
        light_1 = "#e9e5dc",      -- Lab(91, 0, 5)
        light_2 = "#fef9f0",      -- Lab(98, 0, 5)

    },
    accent = {
        -- Colours are:
        -- * pink       = Lab(L, 58, -37) [Triad]
        -- * magenta    = Lab(L, 51, -2)  [Square]
        -- * red        = Lab(L, 48, 36)  [Rectangle]
        -- * orange     = Lab(L, 26, 44)  [Analogic]
        -- * yellow     = Lab(L, -13, 89) [Monotone]
        -- * lightgreen = Lab(L, -38, 51) [Analogic]
        -- * green      = Lab(L, -46, 28) [Square]
        -- * teal       = Lab(L, -30, -6) [Triad, Rectangle]
        -- * blue       = Lab(L, -6, -39) [Split-complementary]
        -- * violet     = Lab(L, 46, -63) [Square, Complementary]
        -- L stands for luminance value. l30 below contains colours with
        -- luminance value of 30, l40 with luminance value of 40, etc.
        [30] = {
            pink = "#7F0681",
            magenta = "#89124B",
            red = "#8D1510",
            orange = "#753400",
            yellow = "#4D4A00",
            lightgreen = "#105300",
            green = "#005516",
            teal = "#00524F",
            blue = "#004D83",
            violet = "#4A2DAB",
        },
        [40] = {
            pink = "#9B2E9C",
            magenta = "#A53263",
            red = "#AB3426",
            orange = "#924B12",
            yellow = "#646200",
            lightgreen = "#2F6C00",
            green = "#006F2D",
            teal = "#006B67",
            blue = "#00659E",
            violet = "#6745C7",
        },
        [50] = {
            pink = "#B74AB7",
            magenta = "#C24E7C",
            red = "#CA4F3C",
            orange = "#AF642B",
            yellow = "#7F7B00",
            lightgreen = "#4A860E",
            green = "#168945",
            teal = "#138580",
            blue = "#147DB9",
            violet = "#845EE4",
        },
        [60] = {
            pink = "#D466D3",
            magenta = "#E06996",
            red = "#E96954",
            orange = "#CD7D43",
            yellow = "#9B9500",
            lightgreen = "#65A02D",
            green = "#3BA45D",
            teal = "#3A9F9A",
            blue = "#4197D5",
            violet = "#A177FF",
        },
        [75] = {
            pink = "#FF8FFE",
            magenta = "#FF92BE",
            red = "#FF9279",
            orange = "#FBA568",
            yellow = "#C8BC00",
            lightgreen = "#8FC955",
            green = "#67CD83",
            teal = "#67C8C3",
            blue = "#72BFFF",
            violet = "#CD9FFF",
        },
        [90] = {
            pink = "#FFB9FF",
            magenta = "#FFBCE8",
            red = "#FFBCA0",
            orange = "#FFCE8F",
            yellow = "#F7E600",
            lightgreen = "#B9F47D",
            green = "#91F8AB",
            teal = "#92F3ED",
            blue = "#9FE9FF",
            violet = "#FAC8FF",
        },
    },
}

return colours
