return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },
    { 'rockerBOO/boo-colorscheme-nvim' },
    { 'kartikp10/noctis.nvim',         dependencies = { 'rktjmp/lush.nvim' } },
    {
        "nvim-treesitter/nvim-treesitter",
        cmd = { "TSUpdate" },
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/playground" },
    {
        "theprimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    { "mbbill/undotree" },
    { "tpope/vim-fugitive" },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'
    },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { "folke/zen-mode.nvim" },
    { "eandrju/cellular-automaton.nvim" },
    { "laytan/cloak.nvim" },
    { "theprimeagen/refactoring.nvim" },
    { "folke/trouble.nvim" },
    { "Pocco81/auto-save.nvim" },
    { "lewis6991/gitsigns.nvim" },
    { "sindrets/diffview.nvim" },
    { "nvim-lualine/lualine.nvim" },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    { "rebelot/kanagawa.nvim" },
    { "windwp/nvim-ts-autotag" },
    { "norcalli/nvim-colorizer.lua" },
    { "akinsho/bufferline.nvim" },
    { "ThePrimeagen/vim-with-me" },
    { "galooshi/vim-import-js" },
    {
        "barrett-ruth/import-cost.nvim",
        build = "sh install.sh yarn",
        config = true
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    { "diepm/vim-rest-console" },
    { "mfussenegger/nvim-dap" },
    { "nvim-neorg/neorg" },
    { "mhartington/formatter.nvim" },
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup()
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },
    { "vim-test/vim-test" }
}
