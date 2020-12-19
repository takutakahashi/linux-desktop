%w(
  /etc/default/keyboard
).each do |b|
  template f do
    source "files#{f}"
    mode '0644'
  end
end
