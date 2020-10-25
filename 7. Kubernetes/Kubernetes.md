## ########################
## Container Orchestration using Kubernetes
## ########################


## Keywords

borg (google) ---> Kubernetes (2014)
Cloud Native Computing Foundation (cncf.io)
Parent company --> linuxfoundation.org
kubernetes --> k8s
k8s Master / Server / Manager
K8s Worker / nodes / Minions / slave

Hosted kubernetes:
    EKS
    AKS
    GKE
    OpenShift

Master (Manager) - Server that runs k8s and manages other worker nodes
    - kube-apiserverr - API server for management and Orchestration
    - etcd - key value store for configuration settings
    - kube-scheduler - Schedule pods on different worker nodes
    - kube-controller manager - controls all the k8s services

Worker nodes: servers which are managed by k8s master and used for running the actual workloads.
    - kubelet - Agent running on all worker nodes
    - kube-proxy - responsible for all communication to and from the pods
    - Container runtime - docker /rkt / containerd / coreOS



**Docker** 
--> user ---> docker cli --> docker daemon --> containers

**K8s**
User ---> kubectl --> kubeapi-server ---> Kubelet --> container runtime --> containers operations


Pod (container level) scaling ---> Handled at k8s object level
Worker node scaling  ---> (Auto Scaling)


CNI - Container Network Interface
CSI - Container Storage Interface

install docker desktop
enable kubernetes
# kubectl version


## K8s Objects / Primitives

- Pod
- ReplicaSets
- Deployments
- Services


## k8s YAML files

A - API
K - Kind
M - Metadata
S - Specs



