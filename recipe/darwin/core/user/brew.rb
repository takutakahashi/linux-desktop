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

).each do |p|
  execute p do
    command "brew install --cask #{p}"
    not_if "which #{p}"
  end
end
