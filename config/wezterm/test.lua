local M = {}


function M.setup(wezterm, config)
  -- タブのタイトル表示用のキャッシュ
  g_tab_titles = {}

  -- タブバーの右端にファイルパスを表示
  wezterm.on("update-status", function(window, pane)
    local cwd_uri = pane:get_current_working_dir()
    if cwd_uri then
      window:set_right_status(cwd_uri.file_path .. " ")

      -- タブタイトルのキャッシュとしてディレクトリ名を保存
      local full_path = cwd_uri.file_path
      local dir_name = full_path:match("([^/]+)$") or full_path
      g_tab_titles[pane:pane_id()] = dir_name
    end
  end)

  -- タブバーの右端に現在時刻を表示する
  --[[
  wezterm.on('update-status', function(window, pane)
    local time = wezterm.strftime("%H:%M:%S")
    window:set_right_status("??" .. time)
  end)
  --]]

  -- タブ番号を設定
  wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local prefix = "[" .. tab.tab_index + 1 .. "] "
    local title = g_tab_titles[tab.active_pane.pane_id] or tab.active_pane.title
    return prefix .. title
  end)

  -- タブの形を変更
  --[[
  -- タブの左側の装飾
  local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle  -- ADD TAB Mod
  -- タブの右側の装飾
  local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle  -- ADD TAB Mod

  -- アクティブタブに色をつける
  wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local background = "#5c6d74"
    local foreground = "#FFFFFF"
    local edge_background = "none"  -- ADD TAB Mod

    if tab.is_active then
      -- background = "#ae8b2d"
      background = "#00BCD4"  -- シアン
      foreground = "#FFFFFF"
    end

    local edge_foreground = background -- ADD TAB Mod
    local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

    return {
      { Background = { Color = edge_background } }, -- ADD TAB Mod
      { Foreground = { Color = edge_foreground } }, -- ADD TAB Mod
      { Text = SOLID_LEFT_ARROW },                  -- ADD TAB Mod
      { Background = { Color = background } },
      { Foreground = { Color = foreground } },
      { Text = title },
      { Background = { Color = edge_background } }, -- ADD TAB Mod
      { Foreground = { Color = edge_foreground } }, -- ADD TAB Mod
      { Text = SOLID_RIGHT_ARROW },                 -- ADD TAB Mod
    }
  end)
  --]]

  -- Show which key table is active in the status area
  -- ステータス領域にアクティブなキーテーブルを表示します
  --[[
  wezterm.on("update-right-status", function(window, pane)
    local name = window:active_key_table()
    if name then
      name = "TABLE: " .. name
    end
    window:set_right_status(name or "")
  end)
  --]]

end

return M

