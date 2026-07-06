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
  # --- Unconfirmed validation candidates, derived from azurerm_app_configuration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ConfigurationStoreName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: data_plane_proxy_authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: encryption.key_vault_key_identifier
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: public_network_access
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: replica.name
  #   source:    [from validate.ConfigurationStoreReplicaName] !matched
  # path: replica.location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

