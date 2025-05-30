return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      omnisharp = {
        cmd = {
          "/home/joliu/.local/share/nvim/mason/packages/omnisharp/OmniSharp",
          "--languageserver",
          "--hostPID",
          tostring(vim.fn.getpid()),
        },
      },
    },
  },
}
