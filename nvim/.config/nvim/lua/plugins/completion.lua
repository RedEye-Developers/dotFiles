return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'saghen/blink.lib',
      'rafamadriz/friendly-snippets',
      'L3MON4D3/LuaSnip',
    },
    event = "InsertEnter",
    build = function()
      require('blink.cmp').build():pwait()
    end,

    opts = {
      keymap = {
        preset = 'enter',
      },
      completion = {
        documentation = { auto_show = true },
        accept = { auto_brackets = { enabled = false }, },
      },
      -- snippets = { preset = 'luasnip' },
      sources = {
        default = {
          'lsp',
          -- 'path',
          -- 'snippets',
          -- 'buffer'
        }
      },
      fuzzy = { implementation = "rust" }
    },
  },
  {
    "L3MON4D3/LuaSnip",
    version = "*",
    build = "make install_jsregexp"
  }
}
