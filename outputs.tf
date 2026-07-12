output "app_configurations_id" {
  description = "Map of id values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.id }
}
output "app_configurations_data_plane_proxy_authentication_mode" {
  description = "Map of data_plane_proxy_authentication_mode values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.data_plane_proxy_authentication_mode }
}
output "app_configurations_data_plane_proxy_private_link_delegation_enabled" {
  description = "Map of data_plane_proxy_private_link_delegation_enabled values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.data_plane_proxy_private_link_delegation_enabled }
}
output "app_configurations_encryption" {
  description = "Map of encryption values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.encryption }
}
output "app_configurations_endpoint" {
  description = "Map of endpoint values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.endpoint }
}
output "app_configurations_identity" {
  description = "Map of identity values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.identity }
}
output "app_configurations_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.local_auth_enabled }
}
output "app_configurations_location" {
  description = "Map of location values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.location }
}
output "app_configurations_name" {
  description = "Map of name values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.name }
}
output "app_configurations_primary_read_key" {
  description = "Map of primary_read_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.primary_read_key }
}
output "app_configurations_primary_write_key" {
  description = "Map of primary_write_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.primary_write_key }
}
output "app_configurations_public_network_access" {
  description = "Map of public_network_access values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.public_network_access }
}
output "app_configurations_purge_protection_enabled" {
  description = "Map of purge_protection_enabled values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.purge_protection_enabled }
}
output "app_configurations_replica" {
  description = "Map of replica values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.replica }
}
output "app_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.resource_group_name }
}
output "app_configurations_secondary_read_key" {
  description = "Map of secondary_read_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.secondary_read_key }
}
output "app_configurations_secondary_write_key" {
  description = "Map of secondary_write_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.secondary_write_key }
}
output "app_configurations_sku" {
  description = "Map of sku values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.sku }
}
output "app_configurations_soft_delete_retention_days" {
  description = "Map of soft_delete_retention_days values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.soft_delete_retention_days }
}
output "app_configurations_tags" {
  description = "Map of tags values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.tags }
}

