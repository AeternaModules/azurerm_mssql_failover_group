output "mssql_failover_groups_id" {
  description = "Map of id values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_failover_groups_databases" {
  description = "Map of databases values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.databases if v.databases != null && length(v.databases) > 0 }
}
output "mssql_failover_groups_name" {
  description = "Map of name values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mssql_failover_groups_partner_server" {
  description = "Map of partner_server values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.partner_server if v.partner_server != null && length(v.partner_server) > 0 }
}
output "mssql_failover_groups_read_write_endpoint_failover_policy" {
  description = "Map of read_write_endpoint_failover_policy values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => one(v.read_write_endpoint_failover_policy) if v.read_write_endpoint_failover_policy != null && length(v.read_write_endpoint_failover_policy) > 0 }
}
output "mssql_failover_groups_readonly_endpoint_failover_policy_enabled" {
  description = "Map of readonly_endpoint_failover_policy_enabled values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.readonly_endpoint_failover_policy_enabled if v.readonly_endpoint_failover_policy_enabled != null }
}
output "mssql_failover_groups_server_id" {
  description = "Map of server_id values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}
output "mssql_failover_groups_tags" {
  description = "Map of tags values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

