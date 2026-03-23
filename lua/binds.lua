-- bindings
vim.g.mapleader = " "
vim.keymap.set ('n', '<leader>ex', ':Ex<CR>', { silent = true }) 
vim.keymap.set ('n', '<leader>s', ':w | %so<CR>', { silent = true })
vim.keymap.set ('n', '<leader>t', ':tabnew<CR>', { silent = true })
vim.keymap.set ('n', '<leader>et', ':tabnew | Ex<CR>', { silent = true })
vim.keymap.set ('n', '<leader>qt', ':tabclose<CR>', { silent = true })
vim.keymap.set ('n', '<leader>ht', ':tabprevious<CR>', { silent = true })
vim.keymap.set ('n', '<leader>lt', ':tabnext<CR>', { silent = true })
