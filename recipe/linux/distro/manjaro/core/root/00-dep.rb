package 'git' do
  action :install
  not_if 'git version'
end

execute "update system" do
  command "pacman -Syu --noconfirm"
end

execute "libunistring" do
  command "pacman -S --noconfirm --asdeps libunistring"
end

execute "install pacman" do
  command "pacman -S --needed --noconfirm $(comm -12 <(pacman -Slq | sort) <(sort pacmanfile))"
end

execute "clean pacman cache" do
  command "yes |pacman -Sc"
end

