variable "app_configurations" {
  description = <<EOT
Map of app_configurations, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - data_plane_proxy_authentication_mode
    - data_plane_proxy_private_link_delegation_enabled
    - local_auth_enabled
    - public_network_access
    - purge_protection_enabled
    - sku
    - soft_delete_retention_days
    - tags
    - encryption (block):
        - identity_client_id (optional)
        - key_vault_key_identifier (optional)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - replica (block):
        - location (required)
        - name (required)
EOT

  type = map(object({
    location                                         = string
    name                                             = string
    resource_group_name                              = string
    data_plane_proxy_authentication_mode             = optional(string)
    data_plane_proxy_private_link_delegation_enabled = optional(bool)
    local_auth_enabled                               = optional(bool)
    public_network_access                            = optional(string)
    purge_protection_enabled                         = optional(bool)
    sku                                              = optional(string)
    soft_delete_retention_days                       = optional(number)
    tags                                             = optional(map(string))
    encryption = optional(object({
      identity_client_id       = optional(string)
      key_vault_key_identifier = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    replica = optional(list(object({
      location = string
      name     = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_configurations : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_configurations : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_configurations : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_configurations : (
        v.encryption == null || (v.encryption.identity_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.encryption.identity_client_id))))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_configurations : (
        v.sku == null || (contains(["free", "developer", "standard", "premium"], v.sku))
      )
    ])
    error_message = "must be one of: free, developer, standard, premium"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_configurations : (
        v.soft_delete_retention_days == null || (v.soft_delete_retention_days >= 1 && v.soft_delete_retention_days <= 7)
      )
    ])
    error_message = "must be between 1 and 7"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_configurations : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

