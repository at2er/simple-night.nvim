# Simple Night

> [!NOTE]
> (English is not my native language, most parts are machine translated)
>
> This theme is my first nvim plugin.
> There are many be areas for imporvement,
> please feel free to point out the problem :).

A simple dark [Neovim](https://github.com/neovim/neovim) theme written in lua.

<picture>
    <img alt="demo" src="https://github.com/at2er/simple-night.nvim/blob/master/demo.png">
</picture>

## Installation
### lazy

```lua
{
    "at2er/simple-night.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
        require("simple-night").setup({
            -- ... your config
        })
    end,
}
```

## Usage

```lua
vim.cmd[[colorscheme simple-night]]
```

## Configuration

> [!IMPORTANT]
> Set the configuration **BEFORE** loading the color scheme with `colorscheme simple-night`.

Example ([lazy.nvim](https://github.com/folke/lazy.nvim)):
```lua
require("simple-night").setup({
    extend_colors = false,
    transparent = false,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
    },
    plugins = {
        "cmp",
        "ibl",
        "neotree",
        "treesitter",
    },
})
```

# TODO

- [ ] More complete README documentation.
- [ ] More highlight support.
    - [ ] [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) support.
    - [ ] [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) support.
    - [ ] [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) support.
    - [x] [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) support.
- [ ] More plugin support.
- [ ] Screenshot demo.

# Special Thanks

- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) directory structure reference and README file reference
