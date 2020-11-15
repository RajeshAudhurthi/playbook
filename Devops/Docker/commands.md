# How to Remove Images and Containers in Docker
## Docker rmi
> You cannot remove an image of a running container unless you use the `-f` or `--force `option.
* `docker images -a` or `docker images` list all the images to get the Image IDs, Image name and other details.
* `docker rmi <your-image-id>` removes images by their ID.
* `docker rmi -f <your-image-id>` removes images by their ID.
* `docker rmi <your-image-id> <your-image-id> ...` remove more than one images at a time, Write Images IDs in the command followed by the spaces between them.
* `docker rmi $(docker images -q)` remove all images
    * Here in the above command, there are two command the first which execute in the $() is shell syntax and returns the results whatever executed in that syntax. So in this -q- is a option is used to provide to return the unique IDs,$() returns the results of image IDs and then docker rmi removes all those images.
## Docker rm
* `docker rm` removes containers by their name or ID.
* `docker rm --force <your-container-id>`

When you have Docker containers running, you first need to stop them before deleting them.

* Stop all running containers: `docker stop $(docker ps -a -q)`
* Delete all stopped containers: `docker rm $(docker ps -a -q)`

**Remove all stopped containers**

`docker rm $(docker ps -a -q)`

This command deletes all stopped containers. The command `docker ps -a -q` above returns all existing container IDs and passes them to the `rm` command which deletes them. Running containers are not deleted.