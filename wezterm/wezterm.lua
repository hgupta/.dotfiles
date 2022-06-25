local wezterm = require 'wezterm'
local act = wezterm.action

return {
  -- font settings
  font_size = 12.0,
  font = wezterm.font('CaskaydiaCove NF'),
  dpi = 96.0,
  -- line_height = 1.05,

  -- ui settings
  color_scheme = "Gruvbox Dark",
  default_cursor_style = 'BlinkingBlock',
  cursor_blink_ease_in = "Linear",
  cursor_blink_ease_out = "Linear",
  cursor_blink_rate = 800,
  initial_rows = 35,
  initial_cols = 145,
  window_background_opacity = 0.95,
  inactive_pane_hsb = {
    hue = 1.0,
    saturation = 1.0,
    brightness = 1.0
  },

  -- keybindings
  disable_default_key_bindings = true,
  leader = { key = 'a', mods = 'CTRL' },
  keys = {
    { key = 'a', mods = 'LEADER|CTRL', action = act { SendString = '\x01' }},
    { key = 'r', mods = 'LEADER', action = 'ReloadConfiguration' },
    { key = 'v', mods = 'CTRL|SHIFT', action = 'Paste' },
    { key = 'c', mods = 'CTRL|SHIFT', action = 'Copy' },

    { key = 't', mods = 'LEADER', action = act { SpawnTab = 'CurrentPaneDomain' }},
    { key = '\\', mods = 'LEADER', action = act { SplitHorizontal = { domain = 'CurrentPaneDomain' }}},
    { key = '-', mods = 'LEADER', action = act { SplitVertical = { domain = 'CurrentPaneDomain' }}},
    { key = 'z', mods = 'LEADER', action = 'TogglePaneZoomState' },

    { key = 'Tab', mods = 'CTRL', action = act { ActivateTabRelative = 1 }},
    { key = 'Tab', mods = 'CTRL|SHIFT', action = act { ActivateTabRelative = -1 }},
    { key = 'LeftArrow', mods = 'LEADER', action = act { ActivatePaneDirection = 'Left' }},
    { key = 'UpArrow', mods = 'LEADER', action = act { ActivatePaneDirection = 'Up' }},
    { key = 'RightArrow', mods = 'LEADER', action = act { ActivatePaneDirection = 'Right' }},
    { key = 'DownArrow', mods = 'LEADER', action = act { ActivatePaneDirection = 'Down' }},

    { key = 'UpArrow', mods = 'SHIFT', action = act { ScrollByLine = -1 }},
    { key = 'DownArrow', mods = 'SHIFT', action = act { ScrollByLine = 1 }},
    { key = 'PageUp', mods = 'SHIFT', action = act { ScrollByPage = -0.5 }},
    { key = 'PageDown', mods = 'SHIFT', action = act { ScrollByPage = 0.5 }},

    { key = 'w', mods = 'LEADER', action = act { CloseCurrentTab = { confirm = false }}},
    { key = 'p', mods = 'LEADER', action = act { CloseCurrentPane = { confirm = false }}},

    { key = '0', mods = 'CTRL', action = 'ResetFontAndWindowSize' },
    { key = '+', mods = 'CTRL|SHIFT', action = 'IncreaseFontSize' },
    { key = '-', mods = 'CTRL', action = 'DecreaseFontSize' },

    { key = 'x', mods = 'LEADER', action = 'ShowLauncher' },
  },

  -- misc settings
  check_for_updates = false,
  automatically_reload_config = false,
  adjust_window_size_when_changing_font_size = false,
  selection_word_boundary = " \t\n{}[]()\"'`,;:@│*",
  window_close_confirmation = 'NeverPrompt',
  exit_behavior = 'Close',
  launch_menu = {
    { label = 'Powershell Core', args = { 'pwsh' }},
    { label = 'MS Powershell', args = { 'powershell' }},
    { label = 'Command Prompt', args = { 'cmd' }},
  },
  default_prog = { "pwsh" },
}

-- https://wezfurlong.org/wezterm/config/lua/keyassignment/CloseCurrentPane.html
-- https://github.com/bew/dotfiles/blob/main/gui/wezterm/cfg_keys.lua
-- https://gist.github.com/luben/f3a0811179b50c3d422e55cf6ab0aab5
-- https://gist.github.com/luluco250/0a28fc20325498b54cc67943d8dfaf8b
-- https://github.com/abzcoding/wezterm/blob/main/wezterm.lua
-- https://github.com/prabirshrestha/dotfiles/blob/master/.config/wezterm/wezterm.lua

