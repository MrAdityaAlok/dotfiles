-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "bash", "sh" },
  callback = function()
    vim.lsp.start({
      cmd = { "/home/mradityaalok/.local/bin/termux-language-server" },
      root_dir = vim.fn.getcwd(), -- Use PWD as project root dir.
    })
  end,
})

-- Hyprlang LSP
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.hl", "hypr*.conf" },
  callback = function(event)
    print(string.format("starting hyprls for %s", vim.inspect(event)))
    vim.lsp.start({
      name = "hyprlang",
      cmd = { "/home/mradityaalok/go/bin/hyprls" },
      root_dir = vim.fn.getcwd(),
    })
  end,
})
