[
  ["/org/gnome/shell/extensions/dash-to-dock/hot-keys", false],
  ["/org/gnome/shell/keybindings/switch-to-application-1", "\"['']\""],
  ["/org/gnome/shell/keybindings/switch-to-application-2", "\"['']\""],
  ["/org/gnome/shell/keybindings/switch-to-application-3", "\"['']\""],
  ["/org/gnome/shell/keybindings/switch-to-application-4", "\"['']\""],
  ["/org/gnome/shell/keybindings/switch-to-application-5", "\"['']\""],
].each do |a|
  execute a[0] do
    command "dconf write #{a[0]} #{a[1]}"
    only_if "which dconf"
  end
end
