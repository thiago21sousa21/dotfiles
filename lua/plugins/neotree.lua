return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Abrir/Fechar Árvore de Arquivos" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        hijack_netrw_behavior = "open_default",
        -- A configuração de itens filtrados fica dentro de filesystem
        filtered_items = {
          visible = true, -- Isso torna os itens visíveis
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            -- ".DS_Store",
            -- "thumbs.db"
          },
        },
      },
    })
  end
}
-- essa era a forma como estava configurada antigamente e o neotree abria automaticamente
-- return {
--
--   "nvim-neo-tree/neo-tree.nvim",
--
--   branch = "v3.x",
--
--   dependencies = {
--
--     "nvim-lua/plenary.nvim",
--
--     "muniftanjim/nui.nvim",
--
--     "nvim-tree/nvim-web-devicons", -- lembra que vamos precisar da fonte!
--
--   },
--
--   config = function()
--
--     -- aqui podemos configurar atalhos para abrir/fechar a árvore
--
--     vim.keymap.set('n', '<leader>e', ':neotree toggle<cr>', { desc = "abrir/fechar árvore de arquivos" })
--
--   end
--
-- }
