return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      -- Motor de Snippets e suas pontes
      {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Seguindo sua pesquisa
        build = "make install_jsregexp", -- Para transformações complexas
        dependencies = { "rafamadriz/friendly-snippets" }, -- Biblioteca de snippets
        config = function()
          -- Carrega os snippets do friendly-snippets de forma eficiente
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },
      "saadparwaiz1/cmp_luasnip", -- Conecta LuaSnip ao nvim-cmp
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            -- Agora usamos o LuaSnip para expandir os snippets
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          -- Atalho para pular entre os campos do snippet (ex: de um parâmetro para outro)
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- Fonte de Snippets no menu
        }, {
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end
  }
}
