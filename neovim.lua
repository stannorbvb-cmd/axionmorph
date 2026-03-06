return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#070703",
                bg_dark = "#070703",
                bg_highlight = "#909060",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#bdbfad",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#D2D99C",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#909060",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#979490",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#c4c2bf",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#d4e85e",
                -- green: Comments, strings, success states, git additions
                green = "#cde651",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#dae98b",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#d5e86d",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#b4b3b1",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e1e1e0",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
