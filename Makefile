update:
	git pull
	npm update
	npm audit fix
	git push
build:
	npm run build
	docker build . -t marcpartensky/svelte-template
push:
	docker push marcpartensky/svelte-template
dev:
	docker-compose up -d --build svelte-dev
prod:
	DOCKER_HOST=ssh://vps docker-compose up -d svelte-prod --build --force-recreate --remove-orphans
	DOCKER_HOST=ssh://vps docker-compose logs -f svelte-prod
logs:
	DOCKER_HOST=ssh://vps docker-compose logs -f svelte-prod

