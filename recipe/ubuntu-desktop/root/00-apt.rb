execute "download vscode" do
  command "curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb"
  user "root"
  not_if "dpkg -s code"
end

execute "download slack" do
  command "curl -L https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.1-amd64.deb -o /tmp/slack.deb"
  user "root"
  not_if "dpkg -s slack"
end
  
%w(
  git
  build-essential
  file
  zsh
  docker.io
  fonts-ricty-diminished
  chromium-browser
  powertop
  tlp
  tlp-rdw
  fcitx-mozc
).each do |p|
  package p do
    action :install
    not_if "dpkg -l |grep #{p}"
  end
end

%w(
  /tmp/vscode.deb
  /tmp/slack.deb
).each do |p|
  package p do
    action :install
    only_if "ls #{p}"
  end
  file p do
    action :delete
  end
end
