gsettings = File.open("./gsettings.txt")
gsettings.each_line |l| do
  execute "#{l}" do
    command "gsettings set #{l}"
  end
end
