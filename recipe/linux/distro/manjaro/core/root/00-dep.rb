package 'git' do
  action :install
  not_if 'git version'
end

execute "install pacman" do
  command "pacman -S --needed --noconfirm $(comm -12 <(pacman -Slq | sort) <(sort pacmanfile))"
end

