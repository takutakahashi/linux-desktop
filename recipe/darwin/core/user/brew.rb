execute "install brew" do
  command "curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh |bash"
  not_if "which brew"
end

%w(
  
).each do |p|
  execute p do
    command "brew install #{p}"
    not_if "which #{p}"
  end
end

%w(
  slack
  rancher
  visual-studio-code
  google-chrome
  google-japanese-ime
  alacritty
  jasper
  alfred
  alt-tab
  scroll-reverser
  rectangle
  tailscale
).each do |p|
  execute p do
    command "brew upgrade --cask #{p} || brew install --cask #{p}"
  end
end
