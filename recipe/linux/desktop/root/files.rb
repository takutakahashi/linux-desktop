%w(
  /etc/default/keyboard
).each do |f|
  template f do
    source "files#{f}"
    mode '0644'
  end
end
