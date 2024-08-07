require "helpers/globals"
require "helpers/keyboard"

local wk = require("which-key")

-- Global {{{
wk.add({
  { 
    "<C-n>",
    "<cmd>Neotree left toggle<cr>",
    desc = "Toggle file explorer",
    mode = "n",
  },
  {
    "<leader>e",
    "<cmd>Neotree focus<cr>",
    desc = "Focus file explorer",
    mode = "n",
  },
  {
    "<leader>f",
    "<cmd>Telescope find_files<cr>",
    desc = "Find in files",
    mode = "n",
  },
  {
    "<leader>o",
    "<cmd>Telescope find_files<cr>",
    desc = "Find files",
    mode = "n",
  },
  {
    "<leader>p",
    "<cmd>Telescope oldfiles<cr>",
    desc = "Previous files",
    mode = "n",
  },
  {
    "K",
    "<cmd>lua vim.lsp.buf.hover()<cr>",
    desc = "Hover information",
    mode = "n",
  },
  {
    "gd",
    "<cmd>lua vim.lsp.buf.definition()<cr>",
    desc = "Go to declaration",
    mode = "n",
  },
})

-- }}}

-- Buffers {{{
wk.add({
  { "<S-Tab>", "<cmd>bp<cr>", desc = "Buffer Previous" },
  { "<Tab>", "<cmd>bn<cr>", desc = "Buffer next" },
  { "<leader>bd", "<cmd>:Bdelete<cr>", desc = "Buffer delete" },
})
-- }}}

-- LSP {{{
wk.add({
  { "<leader>l", group = "LSP" },
  { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code action" },
  { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "Rename symbol" },
})
-- }}}

-- Conform {{{
wk.add({
  { "<leader>fm", function() require("conform").format() end, desc = "Format" },
})
-- }}}

-- Telescope {{{
wk.add({
  { "<leader>t", group = "Telescope" },
  { "<leader>tb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
  { "<leader>tg", group = "Git" },
  { "<leader>tgb", "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
  { "<leader>tgo", "<cmd>Telescope git_files<cr>", desc = "Git files" },
  { "<leader>tj", "<cmd>Telescope jumplist<cr>", desc = "Jumplist" },
  { "<leader>to", "<cmd>Telescope find_files<CR>", desc = "Find files" },
  { "<leader>tp", "<cmd>Telescope oldfiles<cr>", desc = "Oldfiles" },
  { "<leader>tq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix list" },
  { "<leader>tr", "<cmd>Telescope resume<cr>", desc = "Previous Telescope window" },
  { "<leader>ts", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace symbols" },
  { "<leader>tt", "<cmd>Telescope<cr>", desc = "Open Telescope" },
})
-- }}}

-- Trouble {{{
wk.add({
  { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Trouble guickfix" },
  -- { "<leader>xq", function() require("trouble").toggle("quickfix") end, desc = "Toggle trouble" },
  -- gr = {"<cmd>Trouble lsp_references<cr>", "Go to references"},
})
-- }}}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
