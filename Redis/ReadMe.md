We are going to use the configuration under DockerFileConfigs/redis_on_ubuntu_14_10.json to provision our Docker container.  First of all we run the ruby script to generate the Dockerfile:

	ruby tocker.rb -c "DockerFileConfigs/redis_on_ubuntu_14_10.json" -t "Redis"

This will create a Dockerfile in the /Redis directory.  Now we need to build the docker image

	sudo docker build -t lawrencetaylor/docker_redis /Redis

Once built you can run a redis instance by running:

	docker run -d -p 6379:6379 lawrencetaylor/docker_redis /opt/redis/bin/redis-server

