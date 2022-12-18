# Terraform Block
terraform {
  required_version = "~> 1.3.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.33.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.4.3"
    }
    null = {
     source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}
