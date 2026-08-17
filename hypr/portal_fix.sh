#!/usr/bin/env bash

# 1. Espera o socket do D-Bus estar pronto
count=0
while [ ! -S "/run/user/$(id -u)/bus" ] && [ $count -lt 10 ]; do
    sleep 1
    count=$((count+1))
done

# 2. Encerra qualquer portal ou ponte antigos em segundo plano

# 3. Exporta as variáveis de ambiente do Wayland para o D-Bus e Systemd
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland

# 4. Inicia os portais na ordem correta
/usr/libexec/xdg-desktop-portal-hyprland &
sleep 2
/usr/libexec/xdg-desktop-portal &
sleep 2

# 5. Inicia o xwaylandvideobridge
xwaylandvideobridge &
