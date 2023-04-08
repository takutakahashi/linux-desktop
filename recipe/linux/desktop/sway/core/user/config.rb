conf_path = "#{ENV["HOME"]}/.go/src/github.com/takutakahashi/config"
execute "create dir" do
  command "mkdir -p #{conf_path}"
  not_if "ls #{conf_path}"
end

git conf_path do
  repository "https://github.com/takutakahashi/config.git"
  action :sync
  recursive true
end

%w(
  .config/sway
).each do |f|
  link "#{ENV["HOME"]}/#{f}" do
    to "#{conf_path}/home/#{f}"
    not_if "ls #{ENV["HOME"]}/#{f}"
  end
end
