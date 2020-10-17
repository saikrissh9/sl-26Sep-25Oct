## ########################
# Containerization using Docker
## ########################

## Topics

    - Concepts
    - Containers vs VMs
    - Installation
    - Container Lifecycle
    - Image lifecycle
    - Dockerfile
    - DockerHub
    - Networking
    - Volumes
    - Docker Compose
    - Docker Swarm
    - Kubernetes

Docker != Containers

Git --> Linux

Docker vs Kubernetes?

Container Runtime: 
    - Docker
    - rkt
    - mesos
    - containerd
    - runc
    - podman

Container Orchestration / Managers:
  OnPremise:
    - Kubernetes (k8s) | Borg | 2014 | cncf.io | pokemon go
    - Docker Swarm
    - Apache Mesosphere
    - RedHat OpenShift

  Cloud Hosted:
    - AWS EKS - Elastic Kubernetes Service 
    - AWS ECS -  Elastic Container Service
    - Azure AKS
    - GKE

Servereless
    - FaaS
    - BaaS


## Keywords

    - Virtual Machines
    - Hypervisors 
        - Type 1 - VMware ESXi / RedHat KVM / MS HyperV / Xen Server
        - Type 2 - VirtualBox, VMware Workstation/Fusion
    - Containers vs VMs
    - Over provisioning and Under provisioning
    - vSphere and vCentre / SCCM / SCVMM
    - SDDC - Software Defined Data Centre
        - Compute Virtulazation
        - Network Virtualization (SDN)
        - Storage Virtualization (SAN) - EMC2 / NetApp

Resource Utilization
    Physical Servers            ---> 5-10%
    Virtualized Infrastructure  ---> 60-70%
    Containerized environmentl  ---> 80-90%

Virtual Machines ---> Virtualization at the hardware level
Containers       ---> Virtualization at the OS/Kernel level

**cgroups and namespaces --> magic behind containers**

## Early implementation for Container like technology
    Solaris Zones
    BSD Jails
    Linux Chroot

## Docker Architecture
    - Docker Host
    - Docker Deamon
    - Docker Client
        - CLI
        - API
        - GUI (Kitematic)
    - Docker Images 
    - Docker Containers - 
    - Docker Registry
        Public (Community) - DockerHub
        Private - ECR, JFrog, ACR, Local Registry
        
        -- Code on GitHub
        -- Images on DockerHub

    -

Vmware (Golden Templates)
    - Templates ---> Virtual Machines
AWS
    - AMI       ---> EC2
Docker
    - Images    ---> Containers


## Docker commands
    
    docker --version
    docker info
    docker pull imagename:tag (nginx:latest)
    docker run -it imagename /bin/bash
        -i - interactive
        -t - terminal
        -d - detached / daemonized
    docker container ls (old: docker ps)
    docker container ls -a (old: docker ps -a)
    docker images (old: docker image ls)
    docker stop <containerid/name>
    docker start <containerid/name>
    docker attach <containerid/name> => go into a running container
    docker container rm <containerid/name>
    docker image rm <imagename:tag> (old: docker rmi <imagename:tag>)
    docker build -t <imagename:tag> . ==> build an image from Dockerfile
    docker login
    docker push
    docker pull
    docker tag <currentimagename> <newimagename>



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


## Dockerfile

INSTRUCTIONS     ARGUMENTS

FROM <baseimage>
RUN
COPY
EXPOSE


docker build -t <imagename:tag> .











## References

    https://docs.docker.com/get-started/overview/
    https://hub.docker.com/_/ubuntu
    https://github.com/moby/moby/blob/master/pkg/namesgenerator/names-generator.go



