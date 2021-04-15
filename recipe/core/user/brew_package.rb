brew_path = "#{ENV["HOME"]}/.linuxbrew/bin/brew"
%w(
  htop
  ghq
  peco
  kubectx
  kubectl
  anyenv
  direnv
  stern
).each do |p|
  execute p do
    command "#{brew_path} install #{p}"
    not_if "which #{p}"
  end
end
