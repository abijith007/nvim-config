return {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      -- vim-visual-multi configuration
      vim.g.VM_maps = {
        ['Find Under'] = '<C-d>',
        ['Find Subword Under'] = '<C-d>',
      }

      -- Additional optional configuration
      vim.g.VM_theme = 'neon'
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps['Select All'] = '<C-a>'
    end
}

