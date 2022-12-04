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
