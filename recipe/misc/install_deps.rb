%w(
  git
  make
  patch
).each do |p|
  package p do
    action :install
    not_if "which #{p}"
  end
end
