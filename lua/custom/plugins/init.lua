-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  'RRethy/vim-illuminate',
  'tpope/vim-fugitive',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      mode = 'cursor',
      max_lines = 3,
    },
  },
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {
        columns = { 'size' },
        view_options = {
          show_hidden = true,
        },
      }
    end,
  },
  {
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      -- log_level = 'debug',
    },
  },
  {
    'catgoose/nvim-colorizer.lua',
    event = 'BufReadPre',
    opts = {
      '*',
      user_default_options = { names = false },
    },
  },
}
