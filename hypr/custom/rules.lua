hl.window_rule({
  name = "yazi-file-chooser",
  match = { class = "Yazi-FileChooser" },
  float = true,
  pin = true,
  stay_focused = true,
  border_size = 0,
  dim_around = true,
  size = { "(monitor_w*0.4)", "(monitor_h*0.6)" },
})

hl.window_rule({
  name = "android-studio",
  match = { class = "^jetbrains-studio$", title = "^win[0-9]+" },
  rounding = 0,
})

hl.window_rule({
  name = "border_alone",
  match = { float = 0, workspace = "w[tv1]" },
  border_size = 0,
})

hl.window_rule({
  name = "float_shadow",
  match = { float = 1 },
  border_size = 0,
})

hl.layer_rule({
  name = "noctalia",
  match = { namespace = "^noctalia-(bar-.+|notification|dock|panel)$", },
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})


hl.layer_rule({
  name = "wl-kbptr",
  match = { class = "wl-kbptr", },
  no_anim = true,
})

hl.window_rule({
  name = "kando",
  match = {
      class = "menu.kando.Kando",
      title = "Kando Menu"
  },
  no_blur = true,
  opaque = true,
  move = {0, 0},
  rounding = 0,
  size = { "100%", "100%" },
  border_size = 0,
  no_anim = true,
  float = true,
  pin = true
})

hl.workspace_rule({ workspace = "1", persistent = true })
hl.workspace_rule({ workspace = "2", persistent = true })
hl.workspace_rule({ workspace = "3", persistent = true })
hl.workspace_rule({ workspace = "4", persistent = true })
hl.workspace_rule({ workspace = "5", persistent = true })
