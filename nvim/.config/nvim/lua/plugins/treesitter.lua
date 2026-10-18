return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local ts = require("nvim-treesitter")
      local languages = {
        "lua",
        "vim",
        "markdown",
        "json",
        "xml",
        "yaml",
        "bash",
        "c_sharp",
        "razor",
        "html",
        "css",
        "javascript",
        "typescript",
        "regex",
        "tsx"
      }
      ts.install(languages)

      local ts_languages = {
        cs = "c_sharp",
        razor = "razor",
      }

      vim.api.nvim_create_autocmd("FileType", {
        pattern = vim.tbl_keys(ts_languages),
        callback = function(args)
          local lang = ts_languages[args.match]
          vim.treesitter.start(args.buf, lang)
        end,
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    init = function()
      vim.g.no_plugin_maps = true
    end,
    keys = {
      -- Select textobjects
      {
        "af",
        function()
          require("nvim-treesitter-textobjects.select")
              .select_textobject("@function.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Select around function",
      },
      {
        "if",
        function()
          require("nvim-treesitter-textobjects.select")
              .select_textobject("@function.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Select inside function",
      },
      {
        "ac",
        function()
          require("nvim-treesitter-textobjects.select")
              .select_textobject("@class.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Select around class",
      },
      {
        "ic",
        function()
          require("nvim-treesitter-textobjects.select")
              .select_textobject("@class.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Select inside class",
      },
      {
        "as",
        function()
          require("nvim-treesitter-textobjects.select")
              .select_textobject("@local.scope", "locals")
        end,
        mode = { "x", "o" },
        desc = "Select local scope",
      },

      -- Swap textobjects
      {
        "<leader>a",
        function()
          require("nvim-treesitter-textobjects.swap")
              .swap_next("@parameter.inner")
        end,
        desc = "Swap parameter with next",
      },
      {
        "<leader>A",
        function()
          require("nvim-treesitter-textobjects.swap")
              .swap_previous("@parameter.outer")
        end,
        desc = "Swap parameter with previous",
      },

      -- Move to textobjects
      {
        "]f",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next_start("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Next function start",
      },
      {
        "]c",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next_start("@class.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Next class start",
      },
      {
        "]l",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next_start({ "@loop.inner", "@loop.outer" }, "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Next loop",
      },
      {
        "]s",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next_start("@local.scope", "locals")
        end,
        mode = { "n", "x", "o" },
        desc = "Next local scope",
      },
      {
        "]z",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next_start("@fold", "folds")
        end,
        mode = { "n", "x", "o" },
        desc = "Next fold",
      },
      {
        "]F",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next_end("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Next function end",
      },
      {
        "]C",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next_end("@class.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Next class end",
      },
      {
        "[f",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_previous_start("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Previous function start",
      },
      {
        "[c",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_previous_start("@class.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Previous class start",
      },
      {
        "[F",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_previous_end("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Previous function end",
      },
      {
        "[C",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_previous_end("@class.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Previous class end",
      },
      {
        "]d",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_next("@conditional.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Next conditional",
      },
      {
        "[d",
        function()
          require("nvim-treesitter-textobjects.move")
              .goto_previous("@conditional.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Previous conditional",
      },

      -- Repeat the last textobject movement
      {
        ";",
        function()
          require("nvim-treesitter-textobjects.repeatable_move")
              .repeat_last_move_next()
        end,
        mode = { "n", "x", "o" },
        desc = "Repeat movement forward",
      },
      {
        ",",
        function()
          require("nvim-treesitter-textobjects.repeatable_move")
              .repeat_last_move_previous()
        end,
        mode = { "n", "x", "o" },
        desc = "Repeat movement backward",
      },

      -- Make f, F, t, T repeatable with ; and ,
      -- {
      --   "f",
      --   function()
      --     return require("nvim-treesitter-textobjects.repeatable_move")
      --         .builtin_f_expr()
      --   end,
      --   mode = { "n", "x", "o" },
      --   expr = true,
      --   desc = "Find character forward",
      -- },
      -- {
      --   "F",
      --   function()
      --     return require("nvim-treesitter-textobjects.repeatable_move")
      --         .builtin_F_expr()
      --   end,
      --   mode = { "n", "x", "o" },
      --   expr = true,
      --   desc = "Find character backward",
      -- },
      -- {
      --   "t",
      --   function()
      --     return require("nvim-treesitter-textobjects.repeatable_move")
      --         .builtin_t_expr()
      --   end,
      --   mode = { "n", "x", "o" },
      --   expr = true,
      --   desc = "Till character forward",
      -- },
      -- {
      --   "T",
      --   function()
      --     return require("nvim-treesitter-textobjects.repeatable_move")
      --         .builtin_T_expr()
      --   end,
      --   mode = { "n", "x", "o" },
      --   expr = true,
      --   desc = "Till character backward",
      -- },

      -- Custom repeat behavior
      {
        "<Home>",
        function()
          require("nvim-treesitter-textobjects.repeatable_move")
              .repeat_last_move({ forward = false, start = true })
        end,
        mode = { "n", "x", "o" },
        desc = "Repeat movement to previous start",
      },
      {
        "<End>",
        function()
          require("nvim-treesitter-textobjects.repeatable_move")
              .repeat_last_move({ forward = true, start = false })
        end,
        mode = { "n", "x", "o" },
        desc = "Repeat movement to next end",
      },
    },
  }
}
