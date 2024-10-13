# luma-nvim

COLOURS GO HERE

**luma** is a colourful and customisable Neovim theme, centred around yellow colour with accent colours built around it. Engineered with the CIELAB colour space in mind in order to offer optimal contrast and visual clarity.

## Features

- **Dark** and **light** theme variations
- Adjustable contrast
- 10 carefully selected accent colours along with 10 lighter/darker variations
- Supports **treesitter** highlighting as well as **semantic tokens**
- Supports some major plugins (feel free to open an issue if you want your plugin supported)
- Includes themes for **lualine** and **barbecue**

## Usage

### Lazy

If you don't want to change any settings, `setup()` needn't to be called. Defaults are presented below.

```lua
{
    "https://gitlab.com/bartekjaszczak/luma-nvim",

    priority = 1000,
    config = function()
        require("luma").setup({
            theme = "dark",     -- "dark" or "light" theme
            contrast = "medium" -- "low", "medium" or "high" contrast
        })

        -- Activate the theme
        vim.cmd.colorscheme("luma")
    end
}
```

### Lualine

When setting lualine theme, pick between "luma-dark" and "luma-light", depending on the theme you're using.

```lua
require("lualine").setup({
    options = {
        -- ...
        theme = "luma-dark" -- "luma" defaults to "luma-dark"
        -- ...
    },
})
```

### Barbecue

When setting barbecue theme, pick between "luma-dark" and "luma-light", depending on the theme you're using.

```lua
require("barbecue").setup({
    -- ...
    theme = "luma-dark" -- "luma" defaults to "luma-dark"
    -- ...
})
```

## Preview

![cpp](showcase/cpp/showcase.png?)
