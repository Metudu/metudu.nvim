return {
    {   -- LSP
        "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
        lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
        dependencies = {
        -- main one
        { "ms-jpq/coq_nvim", branch = "coq" },
        -- 9000+ Snippets
        { "ms-jpq/coq.artifacts", branch = "artifacts" },
        -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
        -- Need to **configure separately**
        { 'ms-jpq/coq.thirdparty', branch = "3p" }
        -- - shell repl
        -- - nvim lua api
        -- - scientific calculator
        -- - comment banner
        -- - etc
        },
        init = function()
        vim.g.coq_settings = {
            auto_start = 'shut-up', -- if you want to start COQ at startup
        }
        end,
    }, { -- File Explorer
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    }, { -- Fuzzy finder
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }, { -- Terminal 
        'akinsho/toggleterm.nvim',
        version = "*", 
        config = true
    }, { -- Winbar
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            -- configurations go here
        }
    }, { -- Tabline
        'romgrk/barbar.nvim',
        dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            clickable = false,
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    }, { -- Cursorline
        'RRethy/vim-illuminate'
    }, { -- Statusline
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'tokyonight-moon',
                },
            }
        end,
    }, { -- indentation
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require('ibl').setup {}
        end,
        opts = {},
    }, {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd[[colorscheme tokyonight-moon]]
        end,
    },
}
