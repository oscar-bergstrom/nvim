vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>su', require('telescope.builtin').lsp_references, { desc = '[S]earch [Usages]' })

vim.opt.tabstop = 4
vim.opt.colorcolumn = "79"


