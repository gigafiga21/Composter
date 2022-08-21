.PHONY: install-infra prepare-git-hooks

# Dependencies installation

# Install git syntax commit/branch checks
install-infra:
	rm -rf ./externals/infra
	git clone https://github.com/gigafiga21/Infra.git ./externals/infra

install: install-infra

# Dev infrastructure preparation

# Install git hooks
prepare-git-hooks:
	cp -f ./infra/git/hooks/* ./.git/hooks/

prepare: prepare-git-hooks

