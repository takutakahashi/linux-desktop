execute "create dir" do
  command "mkdir -p #{ENV["HOME"]}/.dev/bin"
  not_if "ls #{ENV["HOME"]}/.dev/bin"
end
