conf_path = "#{ENV["HOME"]}/.go/src/github.com/takutakahashi/config"
directory conf_path

git conf_path do
  repository "https://github.com/takutakahashi/config.git"
  revision "master"
  action :sync
end
