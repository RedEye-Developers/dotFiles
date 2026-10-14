return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    enabled = false,
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
    config = function()
      local dotnet = require("easy-dotnet")
      dotnet.setup({
        auto_bootstrap_namespace = {
          type = "file_scoped",
        },
        lsp = {
          preload_roslyn = false,
        },
      })
    end,
  },
  {
    "seblyng/roslyn.nvim",
    enabled = true,
    opts = {
      filewatching = "off",
      settings = {
        ["csharp|inlay_hints"] = {
          csharp_enable_inlay_hints_for_implicit_object_creation = true,
          csharp_enable_inlay_hints_for_implicit_variable_types = true,
          csharp_enable_inlay_hints_for_lambda_parameter_types = true,
          csharp_enable_inlay_hints_for_types = true,
          dotnet_enable_inlay_hints_for_indexer_parameters = true,
          dotnet_enable_inlay_hints_for_literal_parameters = true,
          dotnet_enable_inlay_hints_for_object_creation_parameters = true,
          dotnet_enable_inlay_hints_for_other_parameters = true,
          dotnet_enable_inlay_hints_for_parameters = true,
          dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
          dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
          dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
        },
        ["csharp|code_lens"] = {
          dotnet_enable_references_code_lens = true,
        },
        ["csharp|background_analysis"] = {
          dotnet_analyzer_diagnostics_scope = "openFiles",
          dotnet_compiler_diagnostics_scope = "openFiles",
        },
        ["csharp|completion"] = {
          dotnet_provide_regex_completions = true,
          dotnet_show_completion_items_from_unimported_namespaces = true,
          dotnet_show_name_completion_suggestions = true,
        },
        ["csharp|symbol_search"] = {
          dotnet_search_reference_assemblies = true,
        },
        ["csharp|formatting"] = {
          dotnet_organize_imports_on_format = true,
        }
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        diagnostics = {
          virtual_text = false,
          underline = true,
        },
        inlay_hint = {
          enabled = true,
        },
        harper_ls = {
          enabled = false,
          settings = {
            ["harper-ls"] = {
              linters = {
                SentenceCapitalization = false,
                SpellCheck = true,
              },
            },
          },
        },
        tailwindcss = {
          filetypes_include = { "razor" },
          settings = {
            tailwindCSS = {
              includeLanguages = {
                razor = "html",
              },
              experimental = {
                configFile =
                "/home/redeye/DevProjects/DigitalVault/DigitalVault.Blazor/DigitalVault.Blazor/Styles/styles.css",
              },
            },
          },
        },
      },
      typos_lsp = {
        cmd = { "typos-lsp" },
      },
    },
  },
}
