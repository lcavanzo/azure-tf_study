# Input varibles
# Output variables
# Local variables

# Define Input variables 
# 1. Azure location (CentralUs)
# 2. Azure Resource Name
# 3. Azure aks environment Name (Dev, QA, Prod)

variable "location" {
  default = "centralus"
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
