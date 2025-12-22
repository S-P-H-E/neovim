return {
  'jiaoshijie/undotree',
  lazy = false,  -- load immediately
  config = function()
    local undotree = require('undotree')

    -- optional: call setup
    undotree.setup()

    -- keymap to toggle the panel
    vim.keymap.set('n', '<leader>u', undotree.toggle)
  end
}

