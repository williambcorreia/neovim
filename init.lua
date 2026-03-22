require("config.lazy")
vim.opt.syntax = "on"
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.showmode = false
vim.cmd.colorscheme("retrobox") 

local function set_transparency()
    local groups = { "Normal", "NormalFloat", "SignColumn", "NormalNC", "MsgArea" }
    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end
set_transparency()
