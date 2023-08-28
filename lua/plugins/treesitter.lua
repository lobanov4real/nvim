return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local ts = require("nvim-treesitter.configs")

      ts.setup({
        highlight = {
          enable = true,
          disable = {},
        },
        indent = {
          enable = true,
          disable = {},
        },
        autotag = {
          enable = true,
        },
        context_commentstring = {
          enable         = true,
          enable_autocmd = false,
        },
        -- auto install above language parsers
        auto_install = true,
      })

      local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
      parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
    end,
  },
}
