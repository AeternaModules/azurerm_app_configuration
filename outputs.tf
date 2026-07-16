output "app_configurations_id" {
  description = "Map of id values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_configurations_data_plane_proxy_authentication_mode" {
  description = "Map of data_plane_proxy_authentication_mode values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.data_plane_proxy_authentication_mode if v.data_plane_proxy_authentication_mode != null && length(v.data_plane_proxy_authentication_mode) > 0 }
}
output "app_configurations_data_plane_proxy_private_link_delegation_enabled" {
  description = "Map of data_plane_proxy_private_link_delegation_enabled values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.data_plane_proxy_private_link_delegation_enabled if v.data_plane_proxy_private_link_delegation_enabled != null }
}
output "app_configurations_encryption" {
  description = "Map of encryption values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.encryption if v.encryption != null && length(v.encryption) > 0 }
}
output "app_configurations_endpoint" {
  description = "Map of endpoint values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "app_configurations_identity" {
  description = "Map of identity values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "app_configurations_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.local_auth_enabled if v.local_auth_enabled != null }
}
output "app_configurations_location" {
  description = "Map of location values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.location if v.location != null && length(v.location) > 0 }
}
output "app_configurations_name" {
  description = "Map of name values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_configurations_primary_read_key" {
  description = "Map of primary_read_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.primary_read_key if v.primary_read_key != null && length(v.primary_read_key) > 0 }
}
output "app_configurations_primary_write_key" {
  description = "Map of primary_write_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.primary_write_key if v.primary_write_key != null && length(v.primary_write_key) > 0 }
}
output "app_configurations_public_network_access" {
  description = "Map of public_network_access values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.public_network_access if v.public_network_access != null && length(v.public_network_access) > 0 }
}
output "app_configurations_purge_protection_enabled" {
  description = "Map of purge_protection_enabled values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.purge_protection_enabled if v.purge_protection_enabled != null }
}
output "app_configurations_replica" {
  description = "Map of replica values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.replica if v.replica != null && length(v.replica) > 0 }
}
output "app_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "app_configurations_secondary_read_key" {
  description = "Map of secondary_read_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.secondary_read_key if v.secondary_read_key != null && length(v.secondary_read_key) > 0 }
}
output "app_configurations_secondary_write_key" {
  description = "Map of secondary_write_key values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.secondary_write_key if v.secondary_write_key != null && length(v.secondary_write_key) > 0 }
}
output "app_configurations_sku" {
  description = "Map of sku values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "app_configurations_soft_delete_retention_days" {
  description = "Map of soft_delete_retention_days values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.soft_delete_retention_days if v.soft_delete_retention_days != null }
}
output "app_configurations_tags" {
  description = "Map of tags values across all app_configurations, keyed the same as var.app_configurations"
  value       = { for k, v in azurerm_app_configuration.app_configurations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

