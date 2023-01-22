directory "/etc/xkeysnail" do
  action :create
end

template "/etc/xkeysnail/config.py" do
  source "files/config.py"
end
