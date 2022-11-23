# Create a resource group in EastUS region - Uses default provider
resource "azurerm_resource_group" "myrg01" {
  name = "myrg01"
  location = "East US"
}

# Create a resource group in WestUs region - Uses "provider2-westus" provider
resource "azurerm_resource_group" "myrg02" {
  name = "myrg02"
  location = "West Us"
  provider = azurerm.provider2-westus
}
