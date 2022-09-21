test:
	docker run --rm -v ${PWD}:/src ubuntu /src/ci.sh
ci:
	/src/ci.sh
manjaro:
	./entrypoint.sh manjaro
