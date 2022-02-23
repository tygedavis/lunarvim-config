-- GENERAL --
lvim.log.level = "warn"
-- lvim.format_on_save = false
lvim.colorscheme = "codedark"


-- KEYMAPPINGS
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.lsp.diagnostics.virtual_text = false

-- BUILTIN PLUGIN SETTINGS
lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.telescope.active = true
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git", "node_modules" }
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- VIM OPTIONS
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- FORMATTERS
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "javascript", "typescript", "typescriptreact" },
  },
}

-- LINTERS
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "shellcheck",
    extra_args = { "--severity", "warning" },
  },
  {
    command = "codespell",
    filetypes = { "javascript" },
  },
}

-- ADDITIONAL PLUGINS
lvim.plugins = {
    { "tomasiser/vim-code-dark" }
}

-- CUSTOM HEADER
lvim.builtin.dashboard.custom_header = {
    "                                 ",
    "                                 ",
    " ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ", 
    "█       █  █ █  █       █       █",
    "█▄     ▄█  █▄█  █   ▄▄▄▄█    ▄▄▄█",
    "  █   █ █       █  █  ▄▄█   █▄▄▄ ",
    "  █   █ █▄     ▄█  █ █  █    ▄▄▄█",
    "  █   █   █   █ █  █▄▄█ █   █▄▄▄ ",
    "  █▄▄▄█   █▄▄▄█ █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█"
}
