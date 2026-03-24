SHELL := /bin/bash

PROFILES ?= dev k8s
THEME ?= executive

.PHONY: install link doctor lint macos theme

install:
	bash ./bootstrap/install.sh $(PROFILES)
	bash ./scripts/use-starship-theme.sh $(THEME)

link:
	bash ./scripts/link.sh

doctor:
	bash ./scripts/doctor.sh

lint:
	bash ./scripts/lint.sh

macos:
	bash ./defaults/macos.sh

theme:
	bash ./scripts/use-starship-theme.sh $(THEME)