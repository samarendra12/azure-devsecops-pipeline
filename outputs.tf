output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the provisioned Azure Resource Group."
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "The name of the provisioned Azure Resource Group."
}
