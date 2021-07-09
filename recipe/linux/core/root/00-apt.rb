%w(
  git
  build-essential
  file
  zsh
  docker.io
).each do |p|
  package p do
    action :install
    not_if "dpkg -l |grep #{p}"
  end
end
