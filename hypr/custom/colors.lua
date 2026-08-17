local primary = "rgb(ffffff)"
local surface = "rgb(444444)"
local secondary = "rgb(888888)"
local error = "rgb(ff0000)"

hl.config({
  general = {
    col = {
      active_border = surface,
      inactive_border = surface,
    },
  },
  group = {
    col = {
      border_active = secondary,
      border_inactive = surface,
      border_locked_active = error,
      border_locked_inactive = surface,
    },
    groupbar = {
      col = {
        active = secondary,
        inactive = surface,
        locked_active = error,
        locked_inactive = surface,
      },
    },
  },
  decoration = {
    glow = {
      color = primary
    },
  },
})

local highlightRule = hl.window_rule({
  name = "super_highlight",
  enabled = false,
  match = { focus = true },
  border_color = primary,
})

hl.bind("Super_L", function() highlightRule:set_enabled(true) end, { non_consuming = true, transparent = true })
hl.bind("SUPER + Super_L", function() highlightRule:set_enabled(false) end,
  { non_consuming = true, transparent = true, release = true })
hl.bind("SUPER + SHIFT + Super_L", function() highlightRule:set_enabled(false) end,
  { non_consuming = true, transparent = true, release = true })
hl.bind("SUPER + ALT + Super_L", function() highlightRule:set_enabled(false) end,
  { non_consuming = true, transparent = true, release = true })
hl.bind("SUPER + CTRL + Super_L", function() highlightRule:set_enabled(false) end,
  { non_consuming = true, transparent = true, release = true })
