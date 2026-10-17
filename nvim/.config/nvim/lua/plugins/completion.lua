return {
  {
  'saghen/blink.cmp',
  dependencies = {
    'saghen/blink.lib',
    'rafamadriz/friendly-snippets',
    'L3MON4D3/LuaSnip',
  },
  lazy = false,
  build = function()
    require('blink.cmp').build():pwait()
  end,

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { 
      preset = 'enter',
    },
    completion = { 
      documentation = { auto_show = true },
      accept = { auto_brackets = { enabled = false }, },
    },
    snippets = { preset = 'luasnip' },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
    fuzzy = { implementation = "rust" }
  },
},
{
	"L3MON4D3/LuaSnip",
	version = "*",
	build = "make install_jsregexp"
}
}
