update:
	git pull
	npm update
	npm audit fix
	git push
build:
	npm run build
docker:
	docker-compose up -d --build
push:
	docker push marcpartensky/svelte-template
