hl.bind("SUPER + CTRL + T", hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper"))
hl.bind("SUPER + Escape", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("noctalia msg panel-toggle session"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))

hl.bind("SUPER + D", hl.dsp.exec_cmd("flatpak run dev.vencord.Vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("flatpak run com.spotify.Client"))
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("flatpak run org.vinegarhq.Sober"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("brave-browser --ozone-platform=wayland"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("kitty -e yazi"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("nchat"))
hl.bind("SUPER + +", hl.dsp.exec_cmd("hyprctl setcursor MeguminCursor 24"))
hl.bind("SUPER + C", hl.dsp.exec_cmd("/home/apolox/Downloads/Cursor-3.14.7-x86_64.AppImage --no-sandbox"))

hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + W", hl.dsp.window.float())
hl.bind("SUPER + P", hl.dsp.window.pin())
hl.bind("SUPER + Return", hl.dsp.window.fullscreen())
hl.bind("SUPER + ALT + Return", hl.dsp.window.fullscreen_state({ internal = -1, client = 2 }))
hl.bind("SUPER + O", hl.dsp.layout("togglesplit"))

hl.bind("SUPER + G", hl.dsp.group.toggle())
hl.bind("SUPER + ALT + H", hl.dsp.group.move_window({ direction = "l" }))
hl.bind("SUPER + ALT + L", hl.dsp.group.move_window({ direction = "r" }))
hl.bind("SUPER + ALT + K", hl.dsp.group.move_window({ direction = "u" }))
hl.bind("SUPER + ALT + J", hl.dsp.group.move_window({ direction = "d" }))

hl.bind("SUPER + S", hl.dsp.workspace.toggle_special())
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special", follow = true }))

hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 0 }))

hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1, follow = true }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2, follow = true }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3, follow = true }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4, follow = true }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5, follow = true }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6, follow = true }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7, follow = true }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8, follow = true }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9, follow = true }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 0, follow = true }))

hl.bind("SUPER + SHIFT + mouse_down", hl.dsp.window.move({ workspace = "r-1", follow = true }))
hl.bind("SUPER + SHIFT + mouse_up", hl.dsp.window.move({ workspace = "r+1", follow = true }))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:274", hl.dsp.global("menu.kando.Kando:menu"), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("SUPER + Left", hl.dsp.window.resize({ x = -15, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + Right", hl.dsp.window.resize({ x = 15, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + Up", hl.dsp.window.resize({ x = 0, y = -15, relative = true }), { repeating = true })
hl.bind("SUPER + Down", hl.dsp.window.resize({ x = 0, y = 15, relative = true }), { repeating = true })

hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }), { repeating = true })
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }), { repeating = true })
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }), { repeating = true })
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }), { repeating = true })

hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))

-- WL-KBPTR
hl.bind("SUPER + F", hl.dsp.exec_cmd("pkill wl-kbptr; " .. os.getenv("XDG_CONFIG_HOME") .. "/hypr/custom/scripts/wl-kbptr-bind.sh -f"))

-- Focus Mode
hl.bind("SUPER + B", hl.dsp.exec_cmd(os.getenv("XDG_CONFIG_HOME") .. "/hypr/custom/scripts/focus-mode-toggle.sh"))

-- Dynamic Island
hl.bind("SUPER + + SHIFT + B", hl.dsp.exec_cmd(os.getenv("XDG_CONFIG_HOME") .. "/hypr/custom/scripts/enable-island.sh"))

-- Laptop
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- print 2

hl.bind("CTRL + ALT + P", hl.dsp.exec_cmd("grim -g \"$(slurp)\" ~/Imagens/print_$(date +%Y-%m-%d_%H-%M-%S).png"))

-- Print
hl.bind("SHIFT + print", function() hl.plugin.hyprcapture.open() end)
hl.bind("SUPER + SHIFT + print", function() hl.plugin.hyprcapture.open("window") end)

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace",
})
