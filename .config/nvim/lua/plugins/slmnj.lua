return {
  "jez/vim-better-sml",
  config = function()
    vim.keymap.set("n", "<leader>it", ":SMLTypeQuery<CR>")
    vim.keymap.set("n", "id", ":SMLJumpToDef<CR>")
    vim.keymap.set("n", "<leader>is", ":SMLReplStart<CR>")
    vim.keymap.set("n", "<leader>ik", ":SMLReplStop<CR>")
    vim.keymap.set("n", "<leader>ib", ":SMLReplBuild<CR>")
    vim.keymap.set("n", "<leader>io", ":SMLReplOpen<CR>")
    vim.keymap.set("n", "<leader>iu", ":SMLReplUse<CR>")
    vim.keymap.set("n", "<leader>ic", ":SMLReplClear<CR>")
    vim.keymap.set("n", "<leader>ip", ":SMLReplPrintDepth<CR>")
  end,
}
