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
    data_plane_proxy_authentication_mode             = optional(string) # Default: "Local"
    data_plane_proxy_private_link_delegation_enabled = optional(bool)   # Default: false
    local_auth_enabled                               = optional(bool)   # Default: true
    public_network_access                            = optional(string)
    purge_protection_enabled                         = optional(bool)   # Default: false
    sku                                              = optional(string) # Default: "free"
    soft_delete_retention_days                       = optional(number) # Default: 7
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
        v.replica == null || (length(v.replica) >= 1)
      )
    ])
    error_message = "Each replica list must contain at least 1 items"
  }
}

