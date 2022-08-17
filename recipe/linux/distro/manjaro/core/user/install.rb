execute "update database" do
  command "yay -Sy"
end

package_list_yay = `pacman -Qqem`
f = File.open("yayfile")
if package_list_yay != f.read
  execute "restore yayfile" do
    command "yay --needed --noconfirm --removemake -S - < yayfile"
  end
end
