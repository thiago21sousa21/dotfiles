return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        -- Primeiro configuramos as opções
        require("rose-pine").setup({
            variant = "moon",      -- Aqui definimos a variante Moon
            dark_variant = "moon",
            styles = {
                bold = true,
                italic = false,    -- Desativei itálico para parecer mais "terminal antigo"
                transparency = false,
            },
        })

        -- Depois de configurar, aplicamos o tema
        -- vim.cmd("colorscheme rose-pine")
    end
}
