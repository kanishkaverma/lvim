-- Additional Plugins
lvim.plugins = {
  -- "folke/tokyonight.nvim",
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup()
      vim.cmd "colorscheme rose-pine"
    end,
  },
  "kvrohit/substrata.nvim",
  "MunifTanjim/nui.nvim",
  "Mofiqul/vscode.nvim",
  "EdenEast/nightfox.nvim",
  {
    "olivercederborg/poimandres.nvim",
    config = function()
      require("poimandres").setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end,
  },
  -- "kevinhwang91/nvim-hlslens",
  -- {
  --   "ggandor/leap.nvim",
  --   config = function()
  --     -- require("leap").add_default_mappings(true)
  --   end,
  -- },
  -- "rlane/pounce.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "lunarvim/github.nvim",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "christianchiarulli/nvim-ts-rainbow",
  "mfussenegger/nvim-jdtls",
  -- "karb94/neoscroll.nvim",
  "opalmay/vim-smoothie",
  "j-hui/fidget.nvim",
  "christianchiarulli/nvim-ts-autotag",
  -- "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  -- "hrsh7th/cmp-emoji",
  -- "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  {
    "jose-elias-alvarez/typescript.nvim",
    config = function()
      require("typescript").setup {
        disable_commands = false, -- prevent the plugin from creating Vim commands
        debug = false, -- enable debug logging for commands
        go_to_source_definition = {
          fallback = true, -- fall back to standard LSP definition on failure
        },
      }
    end,
  },
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  -- "renerocksai/telekasten.nvim",
  -- "renerocksai/calendar-vim",
  -- {
  --   "saecki/crates.nvim",
  --   version = "v0.3.0",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     require("crates").setup {
  --       null_ls = {
  --         enabled = true,
  --         name = "crates.nvim",
  --       },
  --     }
  --   end,
  -- },
  -- "jackMort/ChatGPT.nvim",
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  -- { "tzachar/cmp-tabnine", build = "./install.sh" },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   -- event = { "VimEnter" },
  --   config = function()
  --     vim.defer_fn(function()
  --       require("copilot").setup {
  --         plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
  --       }
  --     end, 100)
  --   end,
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   after = { "copilot.lua" },
  --   config = function()
  --     require("copilot_cmp").setup {
  --       formatters = {
  --         insert_text = require("copilot_cmp.format").remove_existing,
  --       },
  --     }
  --   end,
  -- },
  -- "MunifTanjim/nui.nvim",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
