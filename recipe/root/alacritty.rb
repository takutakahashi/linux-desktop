execute "build alacritty" do
  command "docker run -v /usr/local/bin:/src takutakahashi/alacritty-build"
  user "root"
  not_if "ls /usr/local/bin/alacritty"
end
