return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'lua', 'rust', 'javascript', 'typescript', 'go' },
    install_dir = vim.fn.stdpath('data') .. '/site',
    auto_install = false,  -- Explicitly disable
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    ignore_install = { 'gitcommit' },  -- Block specific parsers
  },
}

