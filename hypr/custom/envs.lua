-- Theme
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("XDG_MENU_PREFIX", "plasma-")

-- NVidia
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- Cursor
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", "22")
hl.env("XCURSOR_SIZE", "22")

--Locals
hl.env("XDG_DATA_DIRS",
  "/home/noctalia/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share")
hl.env("XDG_CONFIG_HOME", os.getenv("HOME") .. "/.config")
hl.env("XDG_CACHE_HOME", os.getenv("HOME") .. "/.cache")
hl.env("XDG_DATA_HOME", os.getenv("HOME") .. "/.local/share")
hl.env("CUDA_CACHE_PATH", os.getenv("HOME") .. "/.cache/nv")
hl.env("ANDROID_USER_HOME", os.getenv("HOME") .. "/.config/android_user")
hl.env("DOTNET_CLI_HOME", os.getenv("HOME") .. "/.local/share/dotnet")
hl.env("GRADLE_USER_HOME", os.getenv("HOME") .. "/.local/share/gradle")
hl.env("NPM_CONFIG_USERCONFIG", os.getenv("HOME") .. "/.config/npm/npmrc")
hl.env("NPM_CONFIG_INIT_MODULE", os.getenv("HOME") .. "/.config/npm/config/npm-init.js")
hl.env("NPM_CONFIG_CACHE", os.getenv("HOME") .. "/.cache/npm")
hl.env("NPM_CONFIG_TMP", os.getenv("HOME") .. "/.local/share/npm")
hl.env("NUGET_PACKAGES", os.getenv("HOME") .. "/.cache/NuGetPackages")
hl.env("WINEPREFIX", os.getenv("HOME") .. "/.local/share/wine")

-- Terminal
hl.env("TERMINAL", "kitty -1")
