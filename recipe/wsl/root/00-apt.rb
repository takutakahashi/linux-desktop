package "curl" do
  action :install
end

%w(
  git
  file
  zsh
  tmux
).each do |p|
  package p do
    action :install
    not_if "dpkg -l |grep #{p}"
  end
end
