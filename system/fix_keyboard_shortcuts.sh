# Ctrl-Alt-arrows are used by Window Manager to switch workspaces, but this
# conflicts with VS Code shortcuts. Remap them to Win+PgUp
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "[]"
