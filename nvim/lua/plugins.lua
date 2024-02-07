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

    -- Treesetter for syntax 
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
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
        }
      end,
      dependencies = {'nvim-tree/nvim-web-devicons'}
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
      'linux-cultist/venv-selector.nvim',
      dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
      opts = {
        venvwrapper_path="~/.virtualenvs"
        -- Your options go here
        -- name = "venv",
        -- auto_refresh = false
      },
      event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
      keys = {
        -- Keymap to open VenvSelector to pick a venv.
        { '<leader>vs', '<cmd>VenvSelect<cr>' },
        -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
        { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
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
    }
})
