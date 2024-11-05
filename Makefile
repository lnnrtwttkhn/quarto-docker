all: docker-build

.PHONY: docker-build
docker-build:
	docker build --platform linux/amd64 -t quarto-docker .

.PHONY: docker-run
docker-run: docker-build
	docker run --platform linux/amd64 -it --rm quarto-docker

