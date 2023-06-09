reload "bangursis.lsp.languages.rust"
reload "bangursis.lsp.languages.golang"
reload "bangursis.lsp.languages.sh"

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer", "gopls", "bashls" })

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua",    filetypes = { "lua" } },
  { command = "goimports", filetypes = { "go" } },
  { command = "gofumpt",   filetypes = { "go" } },
  { command = "stylua",    filetypes = { "lua" } },
  { command = "shfmt",     filetypes = { "sh", "zsh" } },
}
