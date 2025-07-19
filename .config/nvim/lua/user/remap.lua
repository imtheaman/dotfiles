vim.g.mapleader = " "
vim.keymap.set("n", "<leader>;", vim.cmd.Ex)
vim.keymap.set("n", "<S-u>", "<C-r>+")

vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>b", "<cmd>tabnext<CR>")

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

vim.keymap.set("n", "<leader>z", "za", { desc = "Toggle fold" })
vim.keymap.set("n", "<leader>zo", "zR", { desc = "Open all folds" })
vim.keymap.set("n", "<leader>zc", "zM", { desc = "Close all folds" })

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

vim.keymap.set("n", "gd", function()
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })
    local position_encoding = clients[1] and clients[1].server_capabilities.positionEncoding or "utf-16"
    local params = vim.lsp.util.make_position_params(0, position_encoding)

    vim.lsp.buf_request(0, "textDocument/definition", params, function(err, result)
        if err then
            vim.notify("LSP definition error: " .. err.message, vim.log.levels.ERROR)
            return
        end

        if not result or vim.tbl_isempty(result) then
            vim.notify("No definition found", vim.log.levels.INFO)
            return
        end

        local def = result[1] or result
        local uri = def.uri or def.targetUri
        local range = def.range or def.targetSelectionRange

        if not uri then
            vim.notify("No URI in definition result", vim.log.levels.WARN)
            return
        end

        local fname = vim.uri_to_fname(uri)
        vim.cmd("tabnew " .. fname)

        if range then
            local pos = { range.start.line + 1, range.start.character }
            vim.api.nvim_win_set_cursor(0, pos)
        end
    end)
end, opts)

vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", { silent = true })
vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { silent = true })
vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", { silent = true })
vim.keymap.set("n", "<leader>l", ":TestLast<CR>", { silent = true })
