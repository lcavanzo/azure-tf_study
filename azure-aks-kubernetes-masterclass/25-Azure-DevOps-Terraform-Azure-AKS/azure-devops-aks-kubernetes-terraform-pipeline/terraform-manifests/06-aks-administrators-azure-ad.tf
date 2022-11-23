# Create AZURE AD Group in active directory for aks admins
resource "azuread_group" "aks_administrators" {
  display_name  = "${azurerm_resource_group.aks_rg.name}-cluster-administrators"
  description   = "Azure Aks kubernetes administrators for the ${azurerm_resource_group.aks_rg.name}-cluster"
  mail_enabled  = true
  types         = ["Unified"]
  security_enabled=true
  mail_nickname = "${azurerm_resource_group.aks_rg.name}-cluster-administrators"
}
