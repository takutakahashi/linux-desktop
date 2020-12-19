execute "build alacritty" do
  command "docker run -v /usr/local/bin:/src takutakahashi/alacritty-build"
  user "root"
  not_if "ls /usr/local/bin/alacritty"
  only_if "ls /var/run/docker.sock"
end

execute "download icon" do
  command "curl -L https://raw.githubusercontent.com/alacritty/alacritty/master/extra/logo/alacritty-simple.svg -o /usr/share/pixmaps/Alacritty.svg"
  not_if "ls /usr/share/pixmaps/Alacritty.svg"
end

execute "download Desktop Entry" do
  command "curl -L https://raw.githubusercontent.com/alacritty/alacritty/master/extra/linux/Alacritty.desktop -o /tmp/Alacritty.desktop"
  not_if "ls /usr/share/applications/Alacritty.desktop"
end

execute "Install Desktop Entry" do
  command "desktop-file-install /tmp/Alacritty.desktop"
  not_if "ls /tmp/Alacritty.desktop"
end

execute "Update desktop Entry" do
  command "update-desktop-database"
  not_if "ls /tmp/Alacritty.desktop"
end

execute "rm /tmp/Alacritty.desktop" do
  command "rm -f /tmp/Alacritty.desktop"
  only_if "ls /tmp/Alacritty.desktop"
end
