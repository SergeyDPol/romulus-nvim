local M = {}

function M.setup()

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.romulus = {
  install_info = {
    url = "https://github.com/SergeyDPol/tree-sitter-romulus",
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

end

return M
