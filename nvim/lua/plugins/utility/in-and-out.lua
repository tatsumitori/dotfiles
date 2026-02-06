-- 下記のような周囲の文字を出入りするためのプラグイン
-- { '"', "'", "(", ")", "{", "}", "[", "]", "`" }
return {
  "ysmb-wtsg/in-and-out.nvim",
  lazy = true,
  keys = {
    {
      -- "<C-CR>", -- キーマップは有効だが、コマンドが実行されない
      "<C-l>",
      function()
        require("in-and-out").in_and_out()
      end,
      mode = "i",
      desc = "in-and-out",
    },
  },
  opts = { additional_targets = { "“", "”" } },
}
