conf_path = "#{ENV["HOME"]}/.go/src/github.com/takutakahashi/config"
execute "create dir" do
  command "mkdir -p #{conf_path}"
  not_if "ls #{conf_path}"
end

git conf_path do
  repository "https://github.com/takutakahashi/config.git"
  action :sync
  recursive true
  revision "master"
end

execute "create dir" do
  command "mkdir -p #{ENV["HOME"]}/.dev"
  not_if "ls #{ENV["HOME"]}/.dev"
end

%w(
  .vimrc
  .zshrc
  .tmux.conf
  .vim
  .rtx.toml
  .tool-versions
  .gitconfig
  .gitignore_global
  .dev/bin
).each do |f|
  link "#{ENV["HOME"]}/#{f}" do
    to "#{conf_path}/home/#{f}"
    not_if "ls #{ENV["HOME"]}/#{f}"
  end
end
