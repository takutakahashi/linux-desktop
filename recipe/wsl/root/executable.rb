%w(
  kd
  kubeconfigs.sh
).each do |b|
  template "/usr/bin/#{b}" do
    source "files/bin/#{b}"
    mode '0755'
  end
end
