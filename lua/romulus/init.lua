local M = {}

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.myparser = {
  install_info = {
    url = "SergeyDPol/tree-sitter-romulus",
    files = { "src/parser.c" },
    branch = "main",
    requires_generate_from_grammar = true,
  },
  filetype = "roma",
}

vim.filetype.add({
  extension = {
    myext = "roma",
  },
})

vim.treesitter.language.register('romulus', 'roma')

return M
