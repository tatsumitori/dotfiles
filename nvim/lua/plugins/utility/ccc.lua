return {
  "uga-rosa/ccc.nvim",
  config = function()
    -- vim.opt.termguicolors = true
    require("ccc").setup({
      highlighter = {
        -- ハイライトの自動有効化
        auto_enable = true,
        -- ハイライトが有効になるファイルタイプの制限
        filetypes = { "css", "html", "vim", "lua" },
      },
      -- mappings = {
      --   -- qで閉じるの無効化
      --   q = require("ccc").mapping.none,
      -- },
    })
  end,
  ft = { "css", "html", "vim", "lua" },
}
