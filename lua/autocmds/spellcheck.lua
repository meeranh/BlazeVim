-- Set up an autocmd group for custom settings
vim.api.nvim_create_augroup('FileTypeSpecificSettings', { clear = true })

-- Enable spell checking for markdown and text files
vim.api.nvim_create_autocmd('FileType', {
  group = 'FileTypeSpecificSettings',
  pattern = { 'markdown', 'text' },
  callback = function()
    vim.opt_local.spell = true
  end,
})
