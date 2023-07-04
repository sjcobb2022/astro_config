return function()
  if(vim.fn.isdirectory('/etc/nixos')) then
    return {
      dap = {
        adapters = {
          haskell = {
            type = "executable",
            command = vim.fn.exepath "haskell-debug-adapter",
          },
        },
        configurations = {
          haskell = {
            {
              type = "haskell",
              request = "launch",
              name = "Debug",
              workspace = "${workspaceFolder}",
              startup = "${file}",
              stopOnEntry = true,
              logFile = vim.fn.stdpath "data" .. "/haskell-dap.log",
              logLevel = "WARNING",
              ghciEnv = vim.empty_dict(),
              ghciPrompt = ">",
              -- Adjust the prompt to the prompt you see when you invoke the stack ghci command below
              ghciInitialPrompt = ">",
              ghciCmd = "stack ghci --with-ghc="
                .. vim.fn.exepath "ghci-dap"
                .. " --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show --ghci-options -ignore-dot-ghci",
            },
          },
        },
      },
    }
  end
end
