Cloud Shell - Configure kubectl to connect to AKS Cluster
Go to https://shell.azure.com
# Template
az aks get-credentials --resource-group <Resource-Group-Name> --name <Cluster-Name>

# Replace Resource Group & Cluster Name
az aks get-credentials --resource-group aks-rg1 --name aksdemo1

# List Kubernetes Worker Nodes
kubectl get nodes 
kubectl get nodes -o wide

Explore Cluster Control Plane and Workload inside that
# List Namespaces
kubectl get namespaces
kubectl get ns

# List Pods from all namespaces
kubectl get pods --all-namespaces

# List all k8s objects from Cluster Control plane
kubectl get all --all-namespaces

Local Desktop - Install Azure CLI and Azure AKS CLI
# Install Azure CLI (MAC)
brew update && brew install azure-cli

# Login to Azure
az login

# Install azure AKS CLI
az aks install-cli

# Configure Cluster Creds (kube config)
az aks get-credentials --resource-group aks-rg1 --name aksdemo1

# Replace Cluster, Resource Group and ACR Repo Name, add registry to a cluster
az aks update -n myAKSCluster -g myResourceGroup --attach-acr <acr-name>
az aks update -n aksdemo2 -g aks-rg2 --attach-acr $ACR_NAME

# Detach ACR with AKS Cluster
az aks update -n aksdemo2 -g aks-rg2 --detach-acr $ACR_NAME

# Delete ACR Repository
Go To Services -> Container Registries -> acrforaksdemo2 -> Delete it

# List AKS Nodes
kubectl get nodes 
kubectl get nodes -o wide

Deploy Sample Application and Test
# Deploy Application
kubectl apply -f kube-manifests/

# Verify Pods
kubectl get pods

# Verify Deployment
kubectl get deployment

# Verify Service (Make a note of external ip)
kubectl get service

# Access Application
http://<External-IP-from-get-service-output>
