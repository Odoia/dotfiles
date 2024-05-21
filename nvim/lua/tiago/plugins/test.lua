return {
  "vim-test/vim-test",
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>t", "<cmd>TestNearest -strategy=neovim<cr>", { desc = "Test Nearest" })
    keymap.set("n", "<leader>T", "<cmd>TestFile -strategy=neovim<cr>", { desc = "Test File" })
    keymap.set("n", "<leader>a", "<cmd>TestSuite -strategy=neovim<cr>", { desc = "Test Suite" })
    keymap.set("n", "<leader>ll", "<cmd>TestLast -strategy=neovim<cr>", { desc = "Test Last" })
    keymap.set("n", "<leader>g", "<cmd>TestVisit<cr>", { desc = "Test Visit" })
  end,
}
