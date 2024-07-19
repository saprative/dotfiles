require("lazy").setup({

   -- Colour 
   'norcalli/nvim-colorizer.lua',

    -- Packer can manage itself
    'wbthomason/packer.nvim',

    -- Fuzzy Finder Plugin
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    {
        'neovim/nvim-lspconfig',

        dependencies = {
            'jose-elias-alvarez/null-ls.nvim',      
            'MunifTanjim/prettier.nvim'
        }
    },
    -- Treesetter for syntax 
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = true,
    },
    'nvim-treesitter/playground',
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },

    -- { 'rose-pine/neovim', as = 'rose-pine' },

    "alexghergh/nvim-tmux-navigation",

    {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
                    theme = 'hyper',
            config = {
              week_header = {
               enable = true,
              },
              shortcut = {
                { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                {
                  icon = ' ',
                  icon_hl = '@variable',
                  desc = 'Files',
                  group = 'Label',
                  action = 'Telescope find_files',
                  key = 'f',
                },
                {
                  desc = ' Notes',
                  group = 'DiagnosticHint',
                  action = 'Neorg workspace notes',
                  key = 'n',
                },
                -- {
                --   desc = ' Apps',
                --   group = 'DiagnosticHint',
                --   action = 'Telescope app',
                --   key = 'a',
                -- },
                {
                  desc = ' dotfiles',
                  group = 'Number',
                  action = 'Neotree ~/.dotfiles',
                  key = 'd',
                },
              },
          }
       }

      end,
      dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
      -- build = "make install_jsregexp",
      dependencies = { "rafamadriz/friendly-snippets" },
    },
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {

        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        -- {                                      -- Optional
        --   'williamboman/mason.nvim',config = function()
        --     pcall(vim.cmd, 'MasonUpdate')
        --   end,
        -- },
        "williamboman/mason.nvim",
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    },

    "terrortylor/nvim-comment",

    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },

    'xarthurx/taskwarrior.vim',
    

    -- Git 
    'lewis6991/gitsigns.nvim',

    {
      "linux-cultist/venv-selector.nvim",
        dependencies = {
          "neovim/nvim-lspconfig", 
          "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
          { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
        },
      lazy = false,
      branch = "regexp", -- This is the regexp branch, use this for the new version
      config = function()
          require("venv-selector").setup()
        end,
        keys = {
          { ",v", "<cmd>VenvSelect<cr>" },
        },
    },

    {
        'm4xshen/autoclose.nvim',
        config = function()
            require("autoclose").setup()
        end,
    },

    {
      "ribelo/taskwarrior.nvim",
        opts = {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        },
        -- or 
        config = true
    },
    {
    "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },

    {
        'arnarg/todotxt.nvim',
        dependencies = {'MunifTanjim/nui.nvim'},
    },
    {
        "nvim-neorg/neorg",
        -- build = ":Neorg sync-parsers",
        -- tag = "*",
        dependencies = {"nvim-lua/plenary.nvim","hrsh7th/nvim-cmp","luarocks.nvim" },
        config = function()
          require("neorg").setup {
            load = {
              ["core.defaults"] = {}, -- Loads default behaviour
              ["core.concealer"] = {}, -- Adds pretty icons to your documents
              ["core.dirman"] = { -- Manages Neorg workspaces
                config = {
                  workspaces = {
                    notes = "~/.data/notes",
                    default_workspace = "notes"
                  },
                },
              },
             ["core.completion"] = { -- Manages Neorg workspaces
                config = {
                    engine = "nvim-cmp"
                },
             },
            },
          }
        end,
    },
    {
        'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons'     -- optional
        }
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
     "windwp/nvim-ts-autotag"
    },
    {"ms-jpq/coq_nvim"},
    {
      "j-hui/fidget.nvim",
      opts = {
        -- options
      },
    },
    { "rafamadriz/friendly-snippets" },
    { "stevanmilic/nvim-lspimport" },
    {
      "kelly-lin/ranger.nvim",
      config = function()
        require("ranger-nvim").setup({ replace_netrw = true })
        vim.api.nvim_set_keymap("n", "<leader>rg", "", {
          noremap = true,
          callback = function()
            require("ranger-nvim").open(true)
          end,
        })
      end,
    },
    -- {
    --   'VonHeikemen/fine-cmdline.nvim',
    --   requires = {
    --     {'MunifTanjim/nui.nvim'}
    --   }
    -- }
})
