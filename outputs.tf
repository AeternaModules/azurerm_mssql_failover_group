output "mssql_failover_groups_databases" {
  description = "Map of databases values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.databases }
}
output "mssql_failover_groups_name" {
  description = "Map of name values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.name }
}
output "mssql_failover_groups_partner_server" {
  description = "Map of partner_server values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.partner_server }
}
output "mssql_failover_groups_read_write_endpoint_failover_policy" {
  description = "Map of read_write_endpoint_failover_policy values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.read_write_endpoint_failover_policy }
}
output "mssql_failover_groups_readonly_endpoint_failover_policy_enabled" {
  description = "Map of readonly_endpoint_failover_policy_enabled values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.readonly_endpoint_failover_policy_enabled }
}
output "mssql_failover_groups_server_id" {
  description = "Map of server_id values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.server_id }
}
output "mssql_failover_groups_tags" {
  description = "Map of tags values across all mssql_failover_groups, keyed the same as var.mssql_failover_groups"
  value       = { for k, v in azurerm_mssql_failover_group.mssql_failover_groups : k => v.tags }
}

