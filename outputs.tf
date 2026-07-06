output "app_configurations" {
  description = "All app_configuration resources"
  value       = azurerm_app_configuration.app_configurations
}
output "app_configurations_data_plane_proxy_authentication_mode" {
  description = "List of data_plane_proxy_authentication_mode values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.data_plane_proxy_authentication_mode]
}
output "app_configurations_data_plane_proxy_private_link_delegation_enabled" {
  description = "List of data_plane_proxy_private_link_delegation_enabled values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.data_plane_proxy_private_link_delegation_enabled]
}
output "app_configurations_encryption" {
  description = "List of encryption values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.encryption]
}
output "app_configurations_endpoint" {
  description = "List of endpoint values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.endpoint]
}
output "app_configurations_identity" {
  description = "List of identity values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.identity]
}
output "app_configurations_local_auth_enabled" {
  description = "List of local_auth_enabled values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.local_auth_enabled]
}
output "app_configurations_location" {
  description = "List of location values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.location]
}
output "app_configurations_name" {
  description = "List of name values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.name]
}
output "app_configurations_primary_read_key" {
  description = "List of primary_read_key values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.primary_read_key]
}
output "app_configurations_primary_write_key" {
  description = "List of primary_write_key values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.primary_write_key]
}
output "app_configurations_public_network_access" {
  description = "List of public_network_access values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.public_network_access]
}
output "app_configurations_purge_protection_enabled" {
  description = "List of purge_protection_enabled values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.purge_protection_enabled]
}
output "app_configurations_replica" {
  description = "List of replica values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.replica]
}
output "app_configurations_resource_group_name" {
  description = "List of resource_group_name values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.resource_group_name]
}
output "app_configurations_secondary_read_key" {
  description = "List of secondary_read_key values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.secondary_read_key]
}
output "app_configurations_secondary_write_key" {
  description = "List of secondary_write_key values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.secondary_write_key]
}
output "app_configurations_sku" {
  description = "List of sku values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.sku]
}
output "app_configurations_soft_delete_retention_days" {
  description = "List of soft_delete_retention_days values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.soft_delete_retention_days]
}
output "app_configurations_tags" {
  description = "List of tags values across all app_configurations"
  value       = [for k, v in azurerm_app_configuration.app_configurations : v.tags]
}

