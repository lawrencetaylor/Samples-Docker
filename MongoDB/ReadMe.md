We are going to use the configuration under DockerFileConfigs/mongo_on_ubuntu_14_10.json to provision our Docker container.  First of all we run the ruby script to generate the Dockerfile:

	ruby tocker.rb -c "DockerFileConfigs/mongo_on_ubuntu_14_10.json" -t "MongoDB"

This will create a Dockerfile in the /MongoDB directory.  Now we need to build the docker image

	sudo docker build -t lawrencetaylor/docker_mongo /MongoDB

Once built you can run a mongo db instance by running:

	sudo docker run -d -p 27017:27017 lawrencetaylor/docker_mongo mongod

