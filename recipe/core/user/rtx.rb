conf_path = "#{ENV["HOME"]}/.go/src/github.com/takutakahashi/config"
arch = `uname -m`.chomp

if arch == "x86_64" then
  arch = "x64"
end

os = `uname |tr '[A-Z]' '[a-z]'`.chomp

if os == "darwin" then
  os = "macos"
end

execute "install rtx" do
  command "curl https://rtx.pub/rtx-latest-#{os}-#{arch} > ~/.dev/bin/rtx && chmod +x ~/.dev/bin/rtx"
  not_if "ls ~/.dev/bin/rtx"
end
  
link "#{ENV["HOME"]}/.tool-versions" do
  to "#{conf_path}/home/.tool-versions"
  not_if "ls #{ENV["HOME"]}/.tool-versions"
end

execute "run rtx install" do
  command "~/.dev/bin/rtx install"
end
