package 'git' do
  action :install
  not_if 'git version'
end

f = File.open("pacmanfile")
execute "install pacman" do
  command "pacman --needed --noconfirm -S #{f.read}"
end

