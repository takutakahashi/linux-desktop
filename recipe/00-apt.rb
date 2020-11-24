package "curl" do
  action :install
end

execute "download vscode" do
  command "curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb"
  not_if "apt show code"
end
  
%w(
  git
  build-essential
  file
  docker.io
).each do |p|
  package p do
    action :install
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
