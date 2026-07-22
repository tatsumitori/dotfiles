return {
  -- Conjure: REPL連携の中核
  {
    "Olical/conjure",
    ft = { "clojure", "fennel" },
    lazy = true,
    init = function()
      -- Conjureのログを別ウィンドウで見やすくする設定例
      vim.g["conjure#log#hud#width"] = 0.42
      vim.g["conjure#log#hud#anchor"] = "SE"
      -- 評価結果をコメントとしてバッファに挿入する機能(任意)
      vim.g["conjure#extract#tree_sitter#enabled"] = true
    end,
  },

  -- 括弧の自動対応・構造編集を助ける
  {
    "gpanders/nvim-parinfer",
    ft = { "clojure", "scheme", "lisp" },
  },

  -- 括弧の対応を色分け表示(視認性向上)
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
    config = function()
      require("rainbow-delimiters.setup").setup({})
    end,
  },

  -- Tree-sitterでClojureの構文解析を強化(Conjureの一部機能に必要)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "clojure" })
      end
    end,
  },
}
