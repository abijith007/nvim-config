return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  config = function()
    local ufo = require("ufo")
    
    -- recommended settings from nvim-ufo documentation
    vim.o.foldcolumn = '1' -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- config nvim-ufo
    ufo.setup({
      provider_selector = function(bufnr, filetype, buftype)
        return {'treesitter', 'indent'}
      end
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set('n', '<leader>zR', require('ufo').openAllFolds, { desc = "Open all folds" }) -- open all folds
    keymap.set('n', '<leader>zM', require('ufo').closeAllFolds, { desc = "Close all folds" }) -- close all folds
    keymap.set('n', '<leader>zr', require('ufo').openFoldsExceptKinds, { desc = "Open folds except kinds" }) -- open folds except kinds
    keymap.set('n', '<leader>zm', require('ufo').closeFoldsWith, { desc = "Close folds with" }) -- close folds with
    keymap.set('n', '<leader>K', function()
      local winid = require('ufo').peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end, { desc = "Peek fold or LSP hover" }) -- peek fold or LSP hover
  end
}

