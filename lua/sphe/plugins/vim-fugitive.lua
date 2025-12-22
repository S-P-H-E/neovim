return {
  'tpope/vim-fugitive',
  lazy = false,  -- load immediately
  config = function()
    -- optional: map :G toggle shortcut for convenience
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
  end
}

