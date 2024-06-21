return {
  "liuchengxu/vista.vim",
  config = function()
    -- Set Vista.vim options
    vim.g.vista_default_executive = 'nvim_lsp' -- You can also set this to 'nvim_lsp' if you're using Neovim's built-in LSP
    vim.g.vista_executive_for = {
      python = 'nvim_lsp',  -- Example for using nvim_lsp for Python files
    }
    vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>vt", "<cmd>Vista!!<CR>", { desc = "Toggle Vista" }) -- toggle Vista
    keymap.set("n", "<leader>vo", "<cmd>Vista!!<CR>", { desc = "Open Vista" }) -- open Vista
    keymap.set("n", "<leader>vc", "<cmd>Vista!!<CR>", { desc = "Close Vista" }) -- close Vista
    keymap.set("n", "<leader>vr", "<cmd>Vista!!<CR>", { desc = "Refresh Vista" }) -- refresh Vista
    keymap.set("n", "<leader>vl", "<cmd>Vista finder<CR>", { desc = "Open Vista finder" }) -- open Vista finder
  end
}

