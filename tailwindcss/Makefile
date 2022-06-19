BASE ?= /

all: build screenshot pdf
.PHONY: prepare
prepare:
	@npm i -D playwright-chromium
.PHONY: build
build:
	@npm run build -- --base $(BASE)
.PHONY: screenshot
screenshot: prepare
	@npm run export -- --range 1,2 --format png
.PHONY: pdf
pdf: prepare
	@npm run export -- --with-clicks
.PHONY: clean
clean:
	@rm -r dist slides-export*