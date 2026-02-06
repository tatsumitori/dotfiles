-- 日本語等マルチバイト文字をsigleでも正常に表示できるよう設定する
-- Help :h cellwidths
return {
  {
    "delphinus/cellwidths.nvim",
    config = function()
      require("cellwidths").setup({
        name = "default",
        -- name = "user/custom",
        -- ---@param cw cellwidths
        -- fallback = function(cw)
        --   -- 特定のテンプレートから追加・削除を行いたい場合は最初に load() を呼んで下さい。
        --   -- cw.load "default"
        --
        --   -- 好きな設定を追加します。以下のどの書式でも構いません。
        --   cw.add(0x2103, 2)
        --   cw.add { 0x2160, 0x2169, 2 }
        --   cw.add {
        --     { 0x2170, 0x2179, 2 },
        --     { 0x2190, 0x2193, 2 },
        --   }
        --
        --   -- 削除も出来ます。設定に存在しないコードポイントを指定してもエラーになりません。
        --   cw.delete(0x2103)
        --   cw.delete { 0x2104, 0x2105, 0x2106 }
        -- end,
      })
    end,
  },
}
