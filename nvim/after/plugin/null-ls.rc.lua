local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup {
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      -- keymap for formatting current buffer
      vim.cmd [[nnoremap <silent><buffer> <leader>f :lua vim.lsp.buf.formatting()<CR>]]

      -- format on save
      vim.cmd [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()]]
    end

    if client.server_capabilities.documentRangeFormattingProvider then
      vim.cmd [[xnoremap <silent><buffer> <leader>f :lua vim.lsp.buf.range_formatting({})<CR>]]
    end
  end
}
