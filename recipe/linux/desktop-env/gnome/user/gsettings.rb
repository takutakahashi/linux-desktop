gsettings = File.open("./gsettings.txt")
gsettings.each_line do |l|
  l.chomp!
  execute "#{l}" do
    command "gsettings set #{l}"
  end
end
