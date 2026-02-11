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
        -- Dentro do seu config no lsp.lua
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- Agora passamos as capacidades para o Neovim saber que pode autocompletar
        vim.lsp.enable('lua_ls', { capabilities = capabilities })
        vim.lsp.enable('pyright', { capabilities = capabilities })
        vim.lsp.enable('ts_ls', { capabilities = capabilities })
        vim.lsp.enable('rust_analyzer', { capabilities = capabilities })

      -- Seus atalhos de teclado continuam iguais
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Ver documentação" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Ir para Definição" })
    end
  }
}
