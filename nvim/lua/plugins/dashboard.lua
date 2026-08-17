local ok, dashboard = pcall(require, 'dashboard')
if not ok then return end

local ok_milli, milli = pcall(require, 'milli')
if not ok_milli then return end

local splash = milli.load({ splash = "blackhole" })

dashboard.setup {
  theme = 'hyper',
  config = {
    header = splash.frames[1],
    week_header = { enable = false, },
    packages = { enable = false },
    project = { enable = false },
    footer = {},
    mru = {
      limit = 10,
      label = 'Recentes',
    },
    shortcut_type = 'number',
    shortcut = {}
  },
}

milli.dashboard({ splash = "blackhole", loop = true })
