vim.g.mapleader = " "
vim.keymap.set("n", "<leader>;", vim.cmd.Ex)
vim.keymap.set("n", "<S-u>", "<C-r>+")

vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>")

vim.keymap.set("n", "<leader>h", "<cmd>split<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>e", "<cmd>wq<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>wa<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "<C-d>zz")
vim.keymap.set("n", "m", "<C-u>zz")
vim.keymap.set("n", "N", "nzzzv")
vim.keymap.set("n", "M", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>re", "<cmd>e ~/.config/nvim/lua/user/remap.lua<CR>");
vim.keymap.set("n", "<leader>sn", "<cmd>e ~/.config/nvim/after/plugin/luasnip.lua<CR>");
vim.keymap.set("n", "<leader>lz", "<cmd>e ~/.config/nvim/lua/user/plugins.lua<CR>");
vim.keymap.set("n", "<leader>cl", "<cmd>e ~/.config/nvim/after/plugin/colors.lua<CR>");
vim.keymap.set("n", "<leader>cmr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>csr", "<cmd>CellularAutomaton scramble<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
