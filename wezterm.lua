local Config = require("config")
local wezterm = require("wezterm")
local mux = wezterm.mux

require("events.right-status").setup()
require("events.tab-title").setup()
require("events.new-tab-button").setup()

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or { width = 120, height = 30 })
  window:gui_window():set_position(500, 250)
end)

return Config:init()
    :append(require("config.appearance"))
    :append(require("config.bindings"))
    :append(require("config.domains"))
    :append(require("config.fonts"))
    :append(require("config.general"))
    :append(require("config.launch")).options
