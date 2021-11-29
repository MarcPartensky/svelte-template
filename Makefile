update:
	git pull
	npm update
	npm audit fix
	git push
build:
	npm run build
