-- bindings
vim.g.mapleader = " "
vim.keymap.set ('n', '<leader>t', ':tabnew | Ex<CR>', { silent = true })
vim.keymap.set ('n', '<leader>qt', ':tabclose<CR>', { silent = true })
vim.keymap.set ('n', '<leader>ht', ':tabprevious<CR>', { silent = true })
vim.keymap.set ('n', '<leader>lt', ':tabnext<CR>', { silent = true })
