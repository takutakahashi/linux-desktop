execute "install brew" do
  command "git clone https://github.com/Homebrew/brew #{ENV["HOME"]}/.linuxbrew/Homebrew"
  not_if "test -d #{ENV["HOME"]}/.linuxbrew"
end

directory "#{ENV["HOME"]}/.linuxbrew/bin" do
  action :create
end

link "#{ENV["HOME"]}/.linuxbrew/bin" do
  to "#{ENV["HOME"]}/.linuxbrew/Homebrew/bin/brew"
  force true
end
