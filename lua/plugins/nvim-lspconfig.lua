return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      omnisharp = {
        cmd = {
          vim.fn.expand("~") .. "/.local/share/nvim/mason/packages/omnisharp/OmniSharp",
          "--languageserver",
          "--hostPID",
          tostring(vim.fn.getpid()),
        },
      },
      azure_pipelines_ls = {
        filetypes = { "yaml", "yml" },
        settings = {
          yaml = {
            schemas = {
              ["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
                "/azure-pipeline*.y*l",
                "/*.azure*",
                "Azure-Pipelines/**/*.y*l",
                "Pipelines/*.y*l",
                "ci/**/*.y*ml",
                "ci/*.y*ml",
              },
            },
          },
        },
      },
    },
  },
}
