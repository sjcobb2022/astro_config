return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.nix" },
  -- { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.tailwindcss" },
  {
    "simrat39/rust-tools.nvim",
    opts = {
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
      server = {
        on_attach = function(client, bufnr)
          require("astronvim.utils.lsp").on_attach(client, bufnr)
          local rt = require "rust-tools"

          local utils = require "astronvim.utils"

          utils.set_mappings({
            n = {
              ["<leader>r"] = { name = " Rust Tools" },
              ["<leader>rr"] = { rt.hover_actions.hover_actions, desc = "Rust Hover Actions" },
              ["<leader>ra"] = { rt.code_action_group.code_action_group, desc = "Rust Code Actions" },
            },
          }, { buffer = bufnr })
        end,
      },
    },
  },

  -- {
  --   "haskell-tools.nvim",
  --   opts = {
  --     tools = {
  --       stylize_markdown = true,
  --       auto_focus = true,
  --     },
  --   },
  -- },

  {
    "linux-cultist/venv-selector.nvim",
    keys = false,
  },
}
