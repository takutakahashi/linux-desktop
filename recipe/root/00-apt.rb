package "curl" do
  action :install
end

execute "download vscode" do
  command "curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb"
  user "root"
  not_if "apt show code"
end
  
%w(
  git
  build-essential
  file
  zsh
  docker.io
  tmux
  fonts-ricty-diminished
).each do |p|
  package p do
    action :install
    not_if "dpkg -l |grep #{p}"
  end
end

%w(
  /tmp/vscode.deb
).each do |p|
  package p do
    action :install
    not_if "apt show code"
  end
  file p do
    action :delete
  end
end
