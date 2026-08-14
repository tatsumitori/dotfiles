return {
  "shaunsingh/nord.nvim",
  -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- サイドバーやnvim-treeやtelescopeのようなポップアップメニューを背景を変える(default:false)
    vim.g.nord_contrast = true
    -- 垂直に分割されたウィンドウの境界線を表示できるようにする(default:false)
    vim.g.nord_borders = false
    -- 背景色の設定を無効にして、NeoVimが端末の背景を使えるようにする(default:false)
    vim.g.nord_disable_background = true
    -- カーソルラインを透明/可視化に設定する(default:false)
    vim.g.nord_cursorline_transparent = true
    -- すべての背景を無効にした場合、サイドバーの背景を再度有効にする(default:false)
    vim.g.nord_enable_sidebar_background = false
    -- イタリック体の有効化/無効化(default:true)
    vim.g.nord_italic = false
    -- 差分モードで使用した場合のカラフルな背景の有効/無効化(default:false)
    vim.g.nord_uniform_diff_background = true
    -- 太字の有効/無効化(default:true)
    vim.g.nord_bold = true

    require("nord").set()
    vim.cmd([[colorscheme nord]])

    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })

    local nord = {
      float_bg = "#2E3440",
      float_border = "#4C566A",
      float_fg = "#ECEFF4",
    }

    -- 透過設定でも Neo-tree のポップアップ入力が読めるように浮動ウィンドウへ背景色を付与
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = nord.float_bg, fg = nord.float_fg })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = nord.float_bg, fg = nord.float_border })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = nord.float_bg, fg = nord.float_border })
    vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { bg = nord.float_bg, fg = nord.float_fg, bold = true })
  end,
}

-- ── nord colors ─────────────────────────────────────────────────────
-- +---------------------------------------------------------+
-- | black = "#2E3440", -- nord0 in palette                  |
-- | dark_gray = "#3B4252", -- nord1 in palette              |
-- | gray = "#434C5E", -- nord2 in palette                   |
-- | light_gray = "#4C566A", -- nord3 in palette             |
-- | light_gray_bright = "#616E88", -- out of palette        |
-- | darkest_white = "#D8DEE9", -- nord4 in palette          |
-- | darker_white = "#E5E9F0", -- nord5 in palette           |
-- | white = "#ECEFF4", -- nord6 in palette                  |
-- | teal = "#8FBCBB", -- nord7 in palette                   |
-- | off_blue = "#88C0D0", -- nord8 in palette               |
-- | glacier = "#81A1C1", -- nord9 in palette                |
-- | blue = "#5E81AC", -- nord10 in palette                  |
-- | red = "#BF616A", -- nord11 in palette                   |
-- | orange = "#D08770", -- nord12 in palette                |
-- | yellow = "#EBCB8B", -- nord13 in palette                |
-- | green = "#A3BE8C", -- nord14 in palette                 |
-- | purple = "#B48EAD", -- nord15 in palette                |
-- | none = "NONE",                                          |
-- +---------------------------------------------------------+
