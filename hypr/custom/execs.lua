hl.on("hyprland.start", function()
  -- System
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
  hl.exec_cmd("systemctl --user start hyprland-session.target")

  -- Solaar
  hl.exec_cmd("solaar --window=hide")

  -- Cliphist
  hl.exec_cmd("wl-paste --type text --watch cliphist store ")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")

  -- Noctalia
  hl.exec_cmd("noctalia")

  -- Hyprpm
  hl.exec_cmd("sleep 1 && hyprpm reload")

  -- Kando
  hl.exec_cmd("env QT_QPA_PLATFORM=wayland kando")
end)
