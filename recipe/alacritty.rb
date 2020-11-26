execute "build alacritty" do
  command "podman run -v #{ENV["HOME"]}/.dev/bin:/src takutakahashi/alacritty-build"
  not_if "ls #{ENV["HOME"]}/.dev/bin/alacritty"
end
