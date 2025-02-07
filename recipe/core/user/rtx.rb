conf_path = "#{ENV["HOME"]}/.go/src/github.com/takutakahashi/config"
arch = `uname -m`.chomp

if arch == "x86_64" then
  arch = "x64"
end

os = `uname |tr '[A-Z]' '[a-z]'`.chomp

if os == "darwin" then
  os = "macos"
end

execute "install mise" do
  command "curl https://mise.run | sh"
end
