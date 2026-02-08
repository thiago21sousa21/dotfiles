return {
  {
    "williamboman/mason-lspconfig.nvim",
    -- As opções (opts) que você achou na documentação
    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "pyright", "rust_analyzer" }, -- Garante que os servidores de Lua, JS e Python estejam lá
      automatic_enable = true, -- Ativa automaticamente conforme você pesquisou
    },
    dependencies = {
      -- Mason: O instalador
      { "williamboman/mason.nvim", opts = {} },
      -- LSPConfig: O configurador
      "neovim/nvim-lspconfig",
    },
   config = function(_, opts)
      -- Iniciamos o Mason normalmente
      require("mason").setup()
      require("mason-lspconfig").setup(opts)

      -- No Neovim 0.11+, usamos vim.lsp.enable para ativar os servidores
      -- Isso substitui o antigo lspconfig.servidor.setup({})
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('pyright')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('rust_analyzer')

      -- Seus atalhos de teclado continuam iguais
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Ver documentação" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Ir para Definição" })
    end
  }
}
