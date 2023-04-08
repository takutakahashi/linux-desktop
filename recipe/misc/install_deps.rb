%w(
  git
  make
  patch
).each do |p|
  package p do
    action :install
  end
end
