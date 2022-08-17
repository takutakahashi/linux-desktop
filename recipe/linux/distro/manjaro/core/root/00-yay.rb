package 'git' do
  action :install
  not_if 'git version'
end

execute "install yay" do
  user "owner"
  command "git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -rf yay"
  not_if "which yay"
end
