vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>su', require('telescope.builtin').lsp_references, { desc = '[S]earch [Usages]' })

vim.opt.tabstop = 4
vim.opt.colorcolumn = "79"

-- Terminal settings 

local on_run = function()
		local fname = vim.api.nvim_buf_get_name(0)
		vim.api.nvim_command('tabnew | term ./run.sh ' .. fname)
end

local t_opts = {silent = true}

local keymap = vim.keymap.set
keymap('t', '<esc>',     '<C-\\><C-N>', t_opts)
keymap('t', '<C-Left>',  '<C-\\><C-N><C-w>h', t_opts)
keymap('t', '<C-Down>',  '<C-\\><C-N><C-w>j', t_opts)
keymap('t', '<C-Up>',    '<C-\\><C-N><C-w>k', t_opts)
keymap('t', '<C-Right>', '<C-\\><C-N><C-w>l', t_opts)

keymap('n', '<leader>rt', '<cmd>tabnew | term<cr>', {desc = '[R]un [T]erminal'})
keymap('n', '<leader>rf', on_run, {desc = '[R]un [F]ile'})
