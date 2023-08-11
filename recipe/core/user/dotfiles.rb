conf_path = "#{ENV["HOME"]}/.config/dots"
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
  .config/rtx/config.toml
  .config/nvim/lua/user
  .tool-versions
  .gitconfig
  .gitignore_global
  .dev/bin
).each do |f|
  execute "create dir" do
    command "mkdir -p #{ENV["HOME"]}/#{File.dirname(f)}"
    not_if "ls #{ENV["HOME"]}/#{File.dirname(f)}"
  end
  execute "recreate link" do
    command "rm -f #{ENV["HOME"]}/#{f}"
    not_if "ls -lah #{ENV["HOME"]}/#{f} |grep #{conf_path}"
  end
  link "#{ENV["HOME"]}/#{f}" do
    to "#{conf_path}/home/#{f}"
    not_if "ls #{ENV["HOME"]}/#{f}"
  end
end
