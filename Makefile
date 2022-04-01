build:
	R < scripts/build.R --no-save
install:
	R < scripts/install.R --no-save

.PHONY: build install
