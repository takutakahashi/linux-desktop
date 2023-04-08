test:
	docker run --rm -v ${PWD}:/src ubuntu /src/ci.sh
ci:
	/src/ci.sh
core:
	./mitamae_local.sh recipe/core/
linux: core
	./mitamae_local.sh recipe/linux/core/
manjaro: linux
	./mitamae_local.sh recipe/linux/distro/manjaro/core/

sway:
	./mitamae_local.sh recipe/linux/desktop/sway/core/
gnome:
	./mitamae_local.sh recipe/linux/desktop/gnome/core/

mitamae: install_mitamae
	./mitamae_local.sh ${RECIPE}

install_mitamae:
	./install_mitamae.sh

dump_manjaro:
	pacman -Qqen |sort > recipe/linux/distro/manjaro/core/root/pacmanfile
	pacman -Qqem |sort > recipe/linux/distro/manjaro/core/user/yayfile
