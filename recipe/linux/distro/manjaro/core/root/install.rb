package_list_native = `pacman -Qqen`
package_list_yay = `pacman -Qqem`
f = File.open("yayfile")
f.each_line do |p|
  if !(package_list_native.include?(p) || package_list_yay.include?(p))
    puts p
  end
end
