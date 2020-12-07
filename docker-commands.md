# Summary of Docker commands for CarRestService

## Build the Docker image

> *The docker build command builds Docker images from a Dockerfile and a “context”. A build’s context is the set of files located in the specified PATH or URL.*
> 
> https://docs.docker.com/engine/reference/commandline/build/

The first option `-t` sets the image's name to `car-rest-service`. The dot `.` uses current folder as the build’s context:

```
docker build -t car-rest-service .
```

## Create a container

> *The docker create command creates a writeable container layer over the specified image and prepares it for running the specified command.*
>
> https://docs.docker.com/engine/reference/commandline/create/

The `--name` option can be used later for starting and stopping the container. The `-p` option exposes our host system's port 8080 and binds it to the same port in the container. Last, `car-rest-service` is the name of the image we used in the build step.

```
docker create --name car-rest-service -p 8080:8080 car-rest-service
```

## Start the container

To start the container, run `docker start` with the name of the created container:

```
docker start car-rest-service
```

Alternatively, to see the output of the container in the current termilan session, use the `--attach` option:

```
docker start car-rest-service --attach
```

When the container is running, you can access the CarRestService app through http://localhost:8080.

## Stop the container

To stop the container, use `docker stop` with the container's name:

```
docker stop car-rest-service
``` 
