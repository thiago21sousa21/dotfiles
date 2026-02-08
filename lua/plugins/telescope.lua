return {
  'nvim-telescope/telescope.nvim',
  version = '*', -- Como recomendado no site
  dependencies = { 
    'nvim-lua/plenary.nvim' 
  },
  config = function()
    -- Primeiro, rodamos o setup global (mesmo que vazio agora, ele é importante)
    require('telescope').setup({
      defaults = {
        -- Aqui você poderia mudar o layout, cores, etc.
      }
    })

    -- Agora definimos os atalhos (Keymaps) que você encontrou na documentação
    local builtin = require('telescope.builtin')
    
    -- Lembre-se: <leader> é o seu Espaço
    -- find files - procura arquivos
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    -- f live grep - procura texto dentro de arquivos
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    -- finde buffers: procura o que ja esta aberto
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    -- find help: procura a ajuda do neovim
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}
