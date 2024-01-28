-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Colour 
    use 'norcalli/nvim-colorizer.lua'

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy Finder Plugin
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesetter for syntax 
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'nvim-treesitter/playground'

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    -- use { 'rose-pine/neovim', as = 'rose-pine' }

    use { "alexghergh/nvim-tmux-navigation" }

    use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
        }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
    }

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {

        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim', run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

    use "terrortylor/nvim-comment"

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'xarthurx/taskwarrior.vim'
    

    -- Git 
    use { 'lewis6991/gitsigns.nvim' }

    use {
        'm4xshen/autoclose.nvim',
        config = function()
            require("autoclose").setup()
        end
    }

end)
