package 'git' do
  action :install
  not_if 'git version'
end

execute "install yay" do
  command "cd && git clone https://aur.archlinux.org/yay.git && cd yay && yes| makepkg -si && cd .. && rm -rf yay"
  not_if "which yay"
end
