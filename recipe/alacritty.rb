execute "build alacritty" do
  command "docker run -v #{ENV["HOME"]}/.dev/bin:/src takutakahashi/alacritty-build"
  user "root"
  not_if "ls #{ENV["HOME"]}/.dev/bin/alacritty"
end
