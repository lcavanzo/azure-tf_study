# Virtual Network Outputs
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value = azurerm_virtual_network.vnet.name
}

## Virtual Network ID - virtual_network_id
output "virtual_network_id" {
  description = "Virtual Network ID"
  value = azurerm_virtual_network.vnet.id
}

# Subnet Outputs (We will write for one web subnet and rest all we will ignore for now)
## Subnet Name - web_subnet_name
output "web_subnet_name" {
  description = "WebTier Subnet Name" 
  value = azurerm_subnet.websubnet.name
}

## Subnet ID - web_subnet_id
output "web_subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.websubnet.id
}

# Network Security Outputs
## Web Subnet NSG Name
output "web_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = azurerm_network_security_group.web_subnet_nsg.id
}

## Subnet Name - app_subnet_name
output "app_subnet_name" {
  description = "AppTier Subnet Name" 
  value = azurerm_subnet.appsubnet.name
}

## Subnet ID - app_subnet_id
output "app_subnet_id" {
  description = "AppTier Subnet ID"
  value = azurerm_subnet.appsubnet.id
}

# Network Security Outputs
## app Subnet NSG Name
output "app_subnet_nsg_name" {
  description = "appTier Subnet NSG Name"
  value = azurerm_network_security_group.app_subnet_nsg.name
}

## app Subnet NSG ID
output "app_subnet_nsg_id" {
  description = "appTier Subnet NSG ID"
  value = azurerm_network_security_group.app_subnet_nsg.id
}

## Subnet Name - db_subnet_name
output "db_subnet_name" {
  description = "dbTier Subnet Name" 
  value = azurerm_subnet.dbsubnet.name
}

## Subnet ID - db_subnet_id
output "db_subnet_id" {
  description = "DBTier Subnet ID"
  value = azurerm_subnet.dbsubnet.id
}

# Network Security Outputs
## db Subnet NSG Name
output "db_subnet_nsg_name" {
  description = "dbTier Subnet NSG Name"
  value = azurerm_network_security_group.db_subnet_nsg.name
}

## db Subnet NSG ID
output "db_subnet_nsg_id" {
  description = "dbTier Subnet NSG ID"
  value = azurerm_network_security_group.db_subnet_nsg.id
}
