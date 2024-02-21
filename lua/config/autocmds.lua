local config_group = vim.api.nvim_create_augroup("MyConfigGroup", {}) -- A global group for all your config autocommands

vim.api.nvim_create_autocmd({ "User" }, {
  pattern = "SessionLoadPost",
  group = config_group,
  callback = function()
    -- vim.cmd("Lazy reload vim-bookmarks")
    require("nvim-tree.api").tree.toggle({ focus = false })
    print("hello")
    -- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
  end,
})
