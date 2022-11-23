terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.32.0"
    }
  }
}

# Provider-1 for EastUS (Default provider)
provider "azurerm" {
  features {}
}

# Provider-2 for WestUS
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false
    }
  }
  alias = "provider2-westus"
  #client_id = 
  #client_secret = 
  #subscription_id = 
}
