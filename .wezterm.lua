-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.


-- or, changing the font size and color scheme.
config.font_size = 12
config.front_end = "WebGpu"
config.webgpu_power_preference = "LowPower"
config.enable_wayland = false
config.font = wezterm.font 'ComicShannsMono Nerd Font'
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = 'Gruvbox dark, medium (base16)'
config.window_padding = {
    left = 37,
    right = 20,
    top = 20,
    bottom = 0,
}
config.warn_about_missing_glyphs = false
config.use_fancy_tab_bar = false
config.skip_close_confirmation_for_processes_named = {
  'bash',
  'sh',
  'zsh',
    'nmtui'
}

config.colors = {
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = '#313244',

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      bg_color = '#6c7086',
      -- The color of the text for the tab
      fg_color = '#f2cdcd',

      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      -- The default is "Normal"
      intensity = 'Normal',

      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      -- The default is "None"
      underline = 'None',

      -- Specify whether you want the text to be italic (true) or not (false)
      -- for this tab.  The default is false.
      italic = false,

      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not for this tab.  The default is false.
      strikethrough = false,
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = '#45475a',
      fg_color = '#cdd6f4',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = '#585b70',
      fg_color = '#cdd6f4',
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab_hover`.
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = '#45475a',
      fg_color = '#cdd6f4',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab_hover`.
    },
  },
}

-- Finally, return the configuration to wezterm:
return config

