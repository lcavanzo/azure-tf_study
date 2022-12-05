# Azure LB Inbound NAT Rule
resource "azurerm_lb_nat_rule" "web_lb_inbound_rule_22" {
  name = "vm-${count.index}-ssh-${var.lb_inbound_nat_ports[count.index]}-vm-22"
  count = var.web_linuxvm_instance_count
  depends_on = [azurerm_linux_virtual_machine.web_linuxvm  ] # To effectively handle azurerm provider related dependency bugs during the destroy resources time
  resource_group_name = azurerm_resource_group.rg.name
  protocol = "Tcp"
  frontend_port = element(var.lb_inbound_nat_ports, count.index)
  backend_port = 22
  frontend_ip_configuration_name = azurerm_lb.web_lb.frontend_ip_configuration[0].name
  loadbalancer_id = azurerm_lb.web_lb.id
}

# Associate LB NAT Rule Vm Network Interface
resource "azurerm_network_interface_nat_rule_association" "web_nic_nat_rule_associate" {
  count = var.web_linuxvm_instance_count
  network_interface_id  = azurerm_network_interface.web_linuxvm_nic[count.index].id
  ip_configuration_name = element(azurerm_network_interface.web_linuxvm_nic[*].ip_configuration[0].name, count.index)
  nat_rule_id           = element(azurerm_lb_nat_rule.web_lb_inbound_rule_22[*].id, count.index)
}
