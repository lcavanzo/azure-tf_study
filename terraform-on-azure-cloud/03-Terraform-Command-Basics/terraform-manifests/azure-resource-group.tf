terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my_demo_rg1"
  
}
