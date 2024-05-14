-- treesitter configuration
return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
   local config = require("nvim-treesitter.configs")
       config.setup({
       ensure_installed = {"javascript","css","vim","vimdoc","html","json","php", "scss"},
       highlight = {enable = true},
       highlight = {enable = true},
      incremental_selection = {enable = true,
       keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm"
        },
      },
    })
   end
}
