--[[
Set <space> as the leader key
See `:help mapleader`
<Leader>キーの設定(default=\)
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
-- Default Key Mapping(Lazy.nvim)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"
--]]
-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
-- Nerd Fontがインストールされ、ターミナルで選択されている場合はtrueに設定します
vim.g.have_nerd_font = false

-- [[ Install `lazy.nvim` plugin manager ]]
require("config.lazy")

-- Automatically loaded on the VeryLazy event.
-- require("config.options")
-- require("config.keymaps")
-- require("config.autocmds")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
