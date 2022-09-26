IMG = hello-selenium

.PHONY: build
build:
	docker build -t $(IMG) .

.PHONY: test
test:
	docker run --rm \
		--shm-size=2g \
		$(IMG) \
		mvn test

.PHONY: bash
bash:
	docker run --rm -it \
		--shm-size=2g \
		$(IMG) \
		bash

