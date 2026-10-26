hl.config({
  general = {
    layout = "scrolling",
    border_size = 2,
    gaps_in = 12,
    gaps_out = 15,
    float_gaps = 6,
    resize_on_border = true,
    extend_border_grab_area = 30,
  },
  scrolling = {
      fullscreen_on_one_column = true,
      focus_fit_method = 1,
      column_width = 0.5,
      follow_focus = true,
      follow_min_visible = 0.4,
      explicit_column_widths = "0.35, 0.5, 0.65, 1.0",
      wrap_focus = false,
    },

  decoration = {
    rounding = 5,
    active_opacity = 0.75,
    inactive_opacity = 0.90,
    blur = {
      enabled = true,
      size = 2,
      passes = 3,
      new_optimizations = true,
    },
    shadow = {
      enabled = false,
    },
  },

  input = {
    kb_layout = "us",
    kb_options = "grp:alt_shift_toggle",
    accel_profile = "flat",
    touchpad = {
      natural_scroll = true,
      disable_while_typing = false,
    },
  },

  misc = {
    focus_on_activate = false,
    font_family = "JetBrains Mono",
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
  },
})

hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "myBezier", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "myBezier", style = "popin 80%" })
hl.animation({ leaf = "layers", enabled = true, speed = 3, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "myBezier" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "myBezier", style = "slide" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 3, bezier = "myBezier", style = "fade" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 3, bezier = "myBezier", style = "fade" })
