execute "install brew" do
  command "curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh |bash"
  not_if "which brew"
end

execute "brew bundle" do
  command "brew bundle"
end
