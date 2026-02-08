return {
  "ellisonleao/gruvbox.nvim", -- O repositório que você encontrou
  priority = 1000,           -- Recomendação da documentação para temas
  config = function()        -- Onde colocamos a lógica de configuração
    
    -- O código que você montou entra aqui dentro:
    require("gruvbox").setup({
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,     -- Desativei itálico aqui para um ar mais "retrô"
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      inverse = true,
      contrast = "hard",     -- Sua escolha de contraste alto
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    })

    -- E finalmente o comando para aplicar, como dizia no site:
    vim.cmd("colorscheme gruvbox")
  end,
}
