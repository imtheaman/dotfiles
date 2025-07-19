vim.opt.guicursor = ""
vim.opt.showmatch = true
vim.opt.foldmethod = 'marker'
vim.opt.splitright = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.g.html_matchtag_always = 1

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.foldenable = true           -- Enable folding
vim.opt.foldmethod = "expr"         -- Use expression folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Treesitter fold expression
vim.opt.foldlevel = 99              -- Keep folds open by default

vim.opt.colorcolumn = ""
