-- options
require("config.lazy")
vim.opt.syntax = "on"
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false

-- transparency
vim.cmd.colorscheme("gruvbox") 
local function set_transparency()
    local groups = { "Normal", "NormalFloat", "SignColumn", "NormalNC", "MsgArea" }
    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end
set_transparency()

-- bindings
vim.g.mapleader = " "
vim.keymap.set ('n', '<leader>e', ':Ex<CR>', { silent = true })
vim.keymap.set ('n', '<leader>s', ':w | %so<CR>', { silent = true })
vim.keymap.set ('n', '<leader>t', ':tabnew<CR>', { silent = true })
vim.keymap.set ('n', '<leader>qt', ':tabclose<CR>', { silent = true })
vim.keymap.set ('n', '<leader>ht', ':tabprevious<CR>', { silent = true })
vim.keymap.set ('n', '<leader>lt', ':tabnext<CR>', { silent = true })
