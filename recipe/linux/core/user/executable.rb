execute "create dir" do
  command "mkdir -p #{ENV["HOME"]}/.dev/bin"
  not_if "ls #{ENV["HOME"]}/.dev/bin"
end
%w(
  rapt
  kbd.sh
  kbd_exec.sh
  kd
  kubeconfigs.sh
).each do |b|
  template "#{ENV["HOME"]}/.dev/bin/#{b}" do
    source "files/bin/#{b}"
    mode '0755'
  end
end
