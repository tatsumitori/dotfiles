-- wezterm APIをpull
local wezterm = require 'wezterm'

-- 設定を保持する
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- 自動リロード
config.automatically_reload_config = true

require("core").setup(wezterm, config)
require("keybinds").setup(wezterm, config)
require("test").setup(wezterm, config)
require("windows").setup(wezterm, config)

-- 設定を反映する
return config
