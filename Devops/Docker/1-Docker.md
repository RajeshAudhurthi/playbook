## Docker  
   1. Physical Machine: its like PC
      1. one-one tenant: one H/W on top of it one OS
      2. DisAdv: 
         1. Hardware
         2. OS: 30-40 % resource(CPU and RAM) consume by OS and subscription cost
   2. Virtual Machine: create multiple Machine on Top of Single Hardware with help of Virtulization Technology(VM ware, Hyper-V), one-multi Tenant 
       1. Adv: its Avoids Multiple H/W
       2. DisAdv: OS: 30-40 % resource(CPU and RAM) consume by OS and subscription cost 
   3. Containers: 
      1. its very thin layer of OS
      2. 95% of Resource are consume by Application
      3. containers run on Isolation 
## Monolithic Application

## Micro Service: complte application break it down into mutliple pieces 
   1. each piece called as Micro service
   2. we deploy microservice in containers
   3. in micro service we can scale up any component
## Docker Engine instalation: 
   1. launch EC2 machine
   2. install docker 
      [docker instalation](https://get.docker.com/)
      ```
      curl -fsSL https://get.docker.com -o get-docker.sh
      sh get-docker.sh
      ``` 
   3. add user to docker group 
      ```
      sudo usermod -aG docker ubuntu
      ```
   4. exit from machine and login
   5. docker --help
```
 Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default
                           "/home/ubuntu/.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level
                           ("debug"|"info"|"warn"|"error"|"fatal")
                           (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "/home/ubuntu/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "/home/ubuntu/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default
                           "/home/ubuntu/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  builder     Manage builds
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  engine      Manage the docker engine
  image       Manage images
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.  

```   

   6. run below commands
      ```
      docker container run -d -p 80:80 nginx
      ```
   7. access nginx container 
      ```
      dockerhostip:80
      ```