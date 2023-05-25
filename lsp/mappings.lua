return {
  n = {
    -- Useful for java / eclipse projects.
    -- Can maintain similar workflow to eclipse when dealing with external projects
    ["<leader>lw"] = { name = "󱌢 LSP Workspace" },
    ["<leader>lwa"] = { vim.lsp.buf.add_workspace_folder, "Add workspace folder" },
    ["<leader>lwr"] = { vim.lsp.buf.remove_workspace_folder, "Remove workspace folder" },
  },
}
