require("lazy").setup({
    
   -- Colour 
   'norcalli/nvim-colorizer.lua',
    
    -- Packer can manage itself
    'wbthomason/packer.nvim',

    -- Fuzzy Finder Plugin
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
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
        {                                      -- Optional
          'williamboman/mason.nvim',run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
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
        'm4xshen/autoclose.nvim',
        config = function()
            require("autoclose").setup()
        end
    },

})
