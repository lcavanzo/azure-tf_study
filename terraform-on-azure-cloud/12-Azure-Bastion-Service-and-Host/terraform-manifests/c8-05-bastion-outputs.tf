## Bastion Host Public Output
output "bastion_host_linuxvm_public_ip_address" {
  description = "Bastion Host Linux VM Public Address"
  value = azurerm_public_ip.bastion_host_publicip.ip_address
}

output "bastion_service_public_ip_address" {
  description = "Bastion Service Public Address"
  value = azurerm_public_ip.bastion_service_publicip.ip_address
}
