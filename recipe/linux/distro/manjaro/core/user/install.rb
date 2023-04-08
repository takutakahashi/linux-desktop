execute "update database" do
  command "yay -Sy"
end

package_list_yay = `pacman -Qqem`
f = File.open("yayfile")
f.each_line do |pl|
  pp = pl.split(",")
  if ENV["CONTAINER"] == "true" && pp.length == 2
    next
  end
  p = pp[0]
  if !package_list_yay.include?(p)
    execute p do
      command "yes |yay --noprovides --answerdiff None --answerclean None --mflags '--noconfirm' -S #{p}"
    end
  end
end
execute "clean yay cache" do
  command "yes |yay -Sc"
end
