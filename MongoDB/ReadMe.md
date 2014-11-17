To build the docker image

	cd MongoDB
	docker build -t lawrencetaylor/docker_mongodb .

Once built you can run a MongoDB instance by running:

	docker run -d -p 27017:27017 lawrencetaylor/docker_mondodb mongod

