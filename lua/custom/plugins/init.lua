-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- add github copilot
  {
    'github/copilot.vim',
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    opts = {
      filesystem = {
        window = {
          mappings = {
            ['.'] = 'toggle_hidden',
            ['H'] = 'set_root',
          },
        },
      },
      window = {
        mappings = {
          ['l'] = 'open',
          ['h'] = 'close_node',
          -- switch to left window
          ['<C-h>'] = 'focus_left',
          -- switch to right window
          ['<C-l>'] = 'focus_right',
          -- switch to upper window
          ['<C-k>'] = 'focus_up',
          -- switch to lower window
          ['<C-j>'] = 'focus_down',
          -- close the window
          ['<C-q>'] = 'close',
        },
      },
    },
  },
}
