-- Autocmds are automatically loaded on the VeryLazy event
-- -- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- --
-- -- Add any additional autocmds here
-- -- with `vim.api.nvim_create_autocmd`
-- --
-- -- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- -- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- カラースキーム変更時に自動保存
vim.api.nvim_create_autocmd("ColorScheme", {
  desc = "Save colorscheme selection for next session",
  group = vim.api.nvim_create_augroup("colorscheme-persist", { clear = true }),
  callback = function()
    local colorscheme = vim.g.colors_name
    if colorscheme then
      local cache_dir = vim.fn.stdpath("cache")
      local colorscheme_file = cache_dir .. "/colorscheme.txt"
      local file = io.open(colorscheme_file, "w")
      if file then
        file:write(colorscheme)
        file:close()
      end
    end
  end,
})

-- 保存されたカラースキームを読み込む
local function load_colorscheme()
  local cache_dir = vim.fn.stdpath("cache")
  local colorscheme_file = cache_dir .. "/colorscheme.txt"
  local file = io.open(colorscheme_file, "r")

  if file then
    local saved_colorscheme = file:read("*a")
    file:close()
    -- 改行を除去
    saved_colorscheme = saved_colorscheme:gsub("\n", "")

    -- カラースキームを適用（エラーハンドリング付き）
    local ok = pcall(vim.cmd.colorscheme, saved_colorscheme)
    if not ok then
      -- 失敗したらデフォルトのカラースキームを使用
      vim.cmd.colorscheme("default")
    end
  else
    -- ファイルがなければデフォルトを使用
    vim.cmd.colorscheme("default")
  end
end

-- Neovim起動時に実行
load_colorscheme()

-- vim: ts=2 sts=2 sw=2 et
