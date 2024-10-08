-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'RRethy/vim-illuminate',
  'tpope/vim-fugitive',
  {
    'windwp/nvim-autopairs',
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require('nvim-autopairs').setup {}
      -- If you want to automatically add `(` after selecting a function or method
      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
      local cmp = require 'cmp'
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
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
    config = function ()
      require('oil').setup {
        columns = {'size'},
        view_options = {
          show_hidden = true,
        },
      }
    end
  }
}
