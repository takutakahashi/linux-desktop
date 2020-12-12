host_hash = run_command("echo -n `hostname |sha1sum |base64`")

template "/opt/.Xmodmap" do
  source "files/by-host/#{host_hash.stdout}/Xmodmap"
  mode '0644'
end

template "/usr/bin/kbd_exec.sh" do
  source "files/by-host/#{host_hash.stdout}/kbd_exec.sh"
  mode '0644'
end

%w(
  99-kbd.rules
).each do |b|
  template "/etc/udev/rules.d/#{b}" do
    source "files/etc/udev/rules.d/#{b}"
    mode '0644'
  end
end
