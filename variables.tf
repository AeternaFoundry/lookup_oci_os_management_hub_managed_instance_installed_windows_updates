variable "os_management_hub_managed_instance_installed_windows_updates_lookup" {
  description = <<EOT
Map of os_management_hub_managed_instance_installed_windows_updates_lookup, attributes below
Required:
    - managed_instance_id
Optional:
    - compartment_id
    - display_name
    - display_name_contains
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    managed_instance_id   = string
    compartment_id        = optional(string)
    display_name          = optional(string)
    display_name_contains = optional(string)
    name                  = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

