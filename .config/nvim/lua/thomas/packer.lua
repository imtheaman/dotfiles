-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    use({
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    })
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function() require("nvim-treesitter.install").update { with_sync = true } end,
    })
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    })
    use("folke/zen-mode.nvim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")
    use("theprimeagen/refactoring.nvim")
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = true,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })
    use("Pocco81/auto-save.nvim")
    -- use("airblade/vim-gitgutter")
    use("lewis6991/gitsigns.nvim")
    use("rhysd/conflict-marker.vim")
    use("sindrets/diffview.nvim")
    use('nvim-lualine/lualine.nvim')
    use({
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    })
    use({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    })
    use("rebelot/kanagawa.nvim")
    use({ 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } })
    use('rockerBOO/boo-colorscheme-nvim')
    use('iamcco/markdown-preview.nvim')
    use('dinhhuy258/git.nvim')
    use('windwp/nvim-ts-autotag')
    use('norcalli/nvim-colorizer.lua')
    use('akinsho/bufferline.nvim')
    use('ThePrimeagen/vim-with-me')
    use('galooshi/vim-import-js')
end)
