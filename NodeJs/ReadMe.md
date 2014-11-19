We are going to use the configuration under DockerFileConfigs/nodejs_on_ubuntu_14_10.json to provision our Docker container.  First of all we run the ruby script to generate the Dockerfile:

	ruby tocker.rb -c "DockerFileConfigs/nodejs_on_ubuntu_14_10.json" -t "NodeJs"

This will create a Dockerfile in the /NodeJs directory.  Now we need to build the docker image

	sudo docker build -t lawrencetaylor/docker_nodejs /NodeJs

Once built you can open a shell on to the container running Node JS with:

	sudo docker run -i -p lawrencetaylor/docker_nodejs

