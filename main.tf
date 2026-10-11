data "oci_os_management_hub_managed_instance_installed_windows_updates" "os_management_hub_managed_instance_installed_windows_updates_lookup" {
  for_each = var.os_management_hub_managed_instance_installed_windows_updates_lookup

  managed_instance_id   = each.value.managed_instance_id
  compartment_id        = each.value.compartment_id
  display_name          = each.value.display_name
  display_name_contains = each.value.display_name_contains
  name                  = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

