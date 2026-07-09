vim.lsp.config("roslyn_ls", {

  filetypes = { "cs", "razor" },

  settings = {
    ["csharp|background_analysis"] = {
      dotnet_analyzer_diagnostics_scope = "openFiles",
      dotnet_compiler_diagnostics_scope = "openFiles",
    },
  },
})

vim.lsp.enable("roslyn_ls")
