return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "diff",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      })
    end,
  },

  -- NOTE: KickStarterの設定

  -- { -- Highlight, edit, and navigate code 'nvim-treesitter/nvim-treesitter',
  --   build = ':TSUpdate',
  --   main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  --   -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  --   opts = {
  --     ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
  --     -- Autoinstall languages that are not installed
  --     auto_install = true,
  --     highlight = {
  --       enable = true,
  --       -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
  --       --  If you are experiencing weird indenting issues, add the language to
  --       --  the list of additional_vim_regex_highlighting and disabled languages for indent.
  --       additional_vim_regex_highlighting = { 'ruby' },
  --     },
  --     indent = { enable = true, disable = { 'ruby' } },
  --   },
  --   -- There are additional nvim-treesitter modules that you can use to interact
  --   -- with nvim-treesitter. You should go explore a few and see what interests you:
  --   --
  --   --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
  --   --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
  --   --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  -- },
}
-- vim: ts=2 sts=2 sw=2 et
