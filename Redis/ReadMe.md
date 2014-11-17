To build the docker image

	cd Redis
	docker build -t lawrencetaylor/docker_redis .

Once built you can run a redis instance by running:

	docker run -d -p 6379:6379 lawrencetaylor/docker_redis /opt/redis/bin/redis-server

