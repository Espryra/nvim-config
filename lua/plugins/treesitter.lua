return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "lua",          
          "typescript",   
          "javascript",   
          "json",         
          "yaml",         
          "dockerfile",   
          "toml",         
          "bash",         
          "make",         
          "regex",        
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end,
  },
}
