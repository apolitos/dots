hl.config({
  general    = {
    gaps_in           = 4,
    gaps_out          = 6,
    border_size       = 2,
    resize_on_border  = false,
    no_focus_fallback = true,
    allow_tearing     = true,
    layout = "dwindle",
  },

  input      = {
    kb_layout = "br",
    numlock_by_default = true,
    repeat_delay = 250,
    repeat_rate = 50,

    follow_mouse = 1,
    off_window_axis_events = 2,

    touchpad = {
      natural_scroll = true,
      disable_while_typing = true,
      clickfinger_behavior = true,
      scroll_factor = 0.7,
    }
  },

  decoration = {
    rounding_power = 2,
    rounding = 12,

    blur = {
      enabled = true,
      size = 6,
      passes = 2,

      new_optimizations = true,
      xray = true,
      ignore_opacity = true,

      noise = 0.0117,
      contrast = 0.8916,
      brightness = 0.8172,
      vibrancy = 0.1696,
      vibrancy_darkness = 0.0,
    },

    shadow = {
      enabled = true,
      range = 8,
      color = 0x50000000,
    },

    glow = {
      enabled = false,
    }
  },

  dwindle    = {
    preserve_split = true,
    smart_split = false,
    smart_resizing = false,
    force_split = 2,
  },

  group      = {
    groupbar = {
      font_size = 10,
      indicator_height = 0,
      rounding = 2,
      gradients = true,
      gradient_rounding = 7,
      gradient_round_only_edges = true,
      gaps_out = 2,
      gaps_in = 2,
      keep_upper_gap = false,
    },
  },

  misc       = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    vrr = 1,
    mouse_move_enables_dpms = true,
    key_press_enables_dpms = true,
    animate_manual_resizes = true,
    animate_mouse_windowdragging = false,
    on_focus_under_fullscreen = 2,
    allow_session_lock_restore = true,
    session_lock_xray = true,
    initial_workspace_tracking = false,
    focus_on_activate = true,
  },

  binds      = {
    scroll_event_delay = 0,
    hide_special_on_workspace_change = true,
  },

  cursor     = {
    zoom_factor = 1,
    zoom_rigid = false,
    zoom_disable_aa = true,
    hotspot_padding = 1,
  },

  gestures   = {
    workspace_swipe_distance = 700,
    workspace_swipe_cancel_ratio = 0.2,
    workspace_swipe_min_speed_to_force = 5,
    workspace_swipe_direction_lock = true,
    workspace_swipe_direction_lock_threshold = 10,
    workspace_swipe_create_new = true,
  },

  animations = {
    enabled = true,
  },
})
