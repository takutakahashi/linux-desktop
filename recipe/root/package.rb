execute "download rpkg" do
    command "curl -L https://raw.githubusercontent.com/takutakahashi/rpkg/main/rpkg -o /usr/bin/rpkg"
    user "root"
  end

  execute "chmod" do
    command "chmod +x /usr/bin/rpkg"
  end