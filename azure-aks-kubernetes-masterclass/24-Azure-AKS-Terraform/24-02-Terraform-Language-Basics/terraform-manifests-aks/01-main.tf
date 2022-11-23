# We will define 
# 1 Terraform settings block
  # 1. Required Terraform version
  # 2. Required Terraform providers
  # 3. Terraform remote state storage with Azure storage account 
# 2. Terraform provider block for azureRM
# 3. Terraform resource block: Define a random pet resourceo

terraform {
  required_version = "~>1.3.4"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.30.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~>2.15.0"
    }
    random= {
      source = "hashicorp/random"
      version = "~>3.4.3"
   }
  }
  backend "azurerm" {
    resource_group_name = "terraform-storage-rg"
    storage_account_name = "terraformstateqwerty1"
    container_name = "tfstatefiles"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "random_pet" "aksrandom" {
  
}
