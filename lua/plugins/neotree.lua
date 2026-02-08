return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- Lembra que vamos precisar da fonte!
  },
  config = function()
    -- Aqui podemos configurar atalhos para abrir/fechar a árvore
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = "Abrir/Fechar Árvore de Arquivos" })
  end
}
