# Input varibles
# Output variables
# Local variables

# Define Input variables 
# 1. Azure location (CentralUs)
# 2. Azure Resource Name
# 3. Azure aks environment Name (Dev, QA, Prod)

variable "location" {
  default = "eastus"
  type = string
  description = "This will be the location where all the resources will be created"
}

# Azure Resource Group Name
variable "resource_group_name" {
    type = string
    description = "This variable defines the Resource Group"
    default = "terraform-aks"
}

# Azure AKS Environment Name
variable "environment" {
    type = string  
    description = "This variable defines the Environment"  
    default = "dev"
}

# AKS Input Variables

# SSH public key for linux Vms
variable "ssh_public_key" {
  default = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for linux k8s Worker nodes"
}

# Windows Admin username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the windows admin username k8s Worker nodes"
}

variable "windows_admin_password" {
  type = string
  default = "P@ssw0rd123456"
  description = "This variable defines the windows admin password k8s worker nodes"
}
