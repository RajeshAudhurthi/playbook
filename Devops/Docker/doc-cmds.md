## Docker Commands 
   1. build docker image 
      ```
      docker --help
      docker image build -t image:tag .
      eg: docker image build -t gol:1.0 .
      ```
   2. run container 
      ```
      docker --help
      docker container run -d -p 8080:8080 gol:1.0 
      ``` 
   3. login into docker container 
      ```
      docker container --help
      docker container exec -it CID /bin/bash
      eg: docker container exec -it 1bc20fba461e /bin/bash
      ``` 
   4. list of docker images and container
      ```
      docker images or  docker image ls
      docker ps or docker container ls ##active containers
      docker ps -a or docker container ls -a
      ```
   5. remove docker image
      ```
      docker --help
      docker image rmi -f c39a868aad02 ## one image 
      docker image rm -f $(docker image ls) ## all images
      ``` 
   6. remove docker container 
      ```
      docker container --help
      docker container rm -f CID
      eg: docker container rm -f 36cb2e3cc700
      docker container rm -f $(docker ps -a -q)
      ``` 

      