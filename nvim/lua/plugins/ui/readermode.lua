return {
  "sarrisv/readermode.nvim",
  lazy = true,
  opts = {
    enabled = false, -- Turned off by default
    -- keymap = "<Leader>R", -- Keymap used to toggle ReaderMode on/off
    -- desc = "toggle ReaderMode",
  },
  keys = {
    {
      "<leader>R",
      "<cmd>ReaderMode<CR>",
      desc = "toggle ReaderMode",
    },
  },
}
