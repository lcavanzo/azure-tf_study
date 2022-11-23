terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.30.0"
    }
  }
}

# configure the Microsoft azure provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "aks-rg2"{
  name = "aks-rg2-tf3"
  location = "Central US"

  # Add tags 
  tags = {
    "environment "= "k8sdev"
    "demotag" = "refreshtest"
  }
}
