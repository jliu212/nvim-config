return {
  { "Hoffs/omnisharp-extended-lsp.nvim" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = { "c_sharp" }
    end,
  },
}
