local status, comment = pcall(require, "nvim_comment")
if (not status) then return end

vim.cmd[[ augroup set-commentstring-ag ]]
vim.cmd[[ autocmd! ]]
vim.cmd[[ autocmd BufEnter *.jsx,*.tsx :lua vim.api.vim_buf_set_option(0, "commentstring", "{/* %s\ */}") ]]
vim.cmd[[ autocmd BufFilePost *.jsx,*.tsx :lua vim.api.vim_buf_set_option(0, "commentstring", "{/* %s\ */}") ]]
vim.cmd[[ augroup END ]]

comment.setup {
  comment_empty = false,
}
