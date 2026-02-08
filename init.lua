-- --- CONFIGURAÇÕES BÁSICAS --- --

-- Números de linha (absoluto e relativo)
-- O número relativo ajuda muito a saber quantas linhas pular com comandos como '5j'
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentação inteligente
vim.opt.tabstop = 4       -- Tamanho visual do Tab
vim.opt.shiftwidth = 4    -- Tamanho da indentação automática
vim.opt.expandtab = true   -- Transforma Tab em espaços (padrão moderno)
vim.opt.autoindent = true

-- Busca inteligente
vim.opt.ignorecase = true  -- Ignora maiúsculas na busca
vim.opt.smartcase = true   -- Se você digitar uma maiúscula, ele passa a respeitá-la

-- Interface
vim.opt.termguicolors = true -- Cores reais de 24 bits (essencial para temas modernos)
vim.opt.cursorline = true    -- Destaca a linha onde o cursor está
vim.opt.scrolloff = 8        -- Mantém 8 linhas visíveis acima/abaixo ao rolar (conforto visual)

-- Clipboard (já tínhamos feito, mas garantindo que fique aqui)
vim.opt.clipboard = "unnamedplus"

-- --- CHAMADA DOS PLUGINS --- --
require("config.lazy")
