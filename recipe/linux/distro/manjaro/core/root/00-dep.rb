package 'git' do
  action :install
  not_if 'git version'
end
