KEYWORD=FIXED

run: build
	docker run --rm keyword-release-action $(KEYWORD)

build:
	docker build --tag keyword-release-action .

test:
	./entrypoint.sh $(KEYWORD)

# make -C Ch05/05_05 (use this command to run Makefile from the Ch05/05_05 directory)
