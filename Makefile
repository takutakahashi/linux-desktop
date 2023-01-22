test:
	docker run --rm -v ${PWD}:/src ubuntu /src/ci.sh
ci:
	/src/ci.sh
manjaro:
	./entrypoint.sh manjaro

mitamae: install_mitamae
	./mitamae_local.sh ${RECIPE}

install_mitamae:
	./install_mitamae.sh

dump_manjaro:
	pacman -Qqen |sort > recipe/linux/distro/manjaro/core/root/pacmanfile
	pacman -Qqem |sort > recipe/linux/distro/manjaro/core/user/yayfile
