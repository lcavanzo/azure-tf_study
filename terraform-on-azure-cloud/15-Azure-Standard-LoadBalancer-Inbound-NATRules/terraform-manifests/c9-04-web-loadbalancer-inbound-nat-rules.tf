# Azure LB Inbound NAT Rule
resource "azurerm_lb_nat_rule" "web_lb_inbound_rule_22" {
  name = "ssh-1022-vm-22"
  resource_group_name = azurerm_resource_group.rg.name
  protocol = "Tcp"
  frontend_port = 1022
  backend_port = 22
  frontend_ip_configuration_name = azurerm_lb.web_lb.frontend_ip_configuration[0].name
  loadbalancer_id = azurerm_lb.web_lb.id
}

# Associate LB NAT Rule Vm Network Interface
resource "azurerm_network_interface_nat_rule_association" "web_nic_nat_rule_associate" {
  network_interface_id = azurerm_network_interface.web_linuxvm_nic.id 
  ip_configuration_name = azurerm_network_interface.web_linuxvm_nic.ip_configuration[0].name
  nat_rule_id = azurerm_lb_nat_rule.web_lb_inbound_rule_22.id
}
