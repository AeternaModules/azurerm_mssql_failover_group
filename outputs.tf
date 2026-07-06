output "mssql_failover_groups" {
  description = "All mssql_failover_group resources"
  value       = azurerm_mssql_failover_group.mssql_failover_groups
}
output "mssql_failover_groups_databases" {
  description = "List of databases values across all mssql_failover_groups"
  value       = [for k, v in azurerm_mssql_failover_group.mssql_failover_groups : v.databases]
}
output "mssql_failover_groups_name" {
  description = "List of name values across all mssql_failover_groups"
  value       = [for k, v in azurerm_mssql_failover_group.mssql_failover_groups : v.name]
}
output "mssql_failover_groups_partner_server" {
  description = "List of partner_server values across all mssql_failover_groups"
  value       = [for k, v in azurerm_mssql_failover_group.mssql_failover_groups : v.partner_server]
}
output "mssql_failover_groups_read_write_endpoint_failover_policy" {
  description = "List of read_write_endpoint_failover_policy values across all mssql_failover_groups"
  value       = [for k, v in azurerm_mssql_failover_group.mssql_failover_groups : v.read_write_endpoint_failover_policy]
}
output "mssql_failover_groups_readonly_endpoint_failover_policy_enabled" {
  description = "List of readonly_endpoint_failover_policy_enabled values across all mssql_failover_groups"
  value       = [for k, v in azurerm_mssql_failover_group.mssql_failover_groups : v.readonly_endpoint_failover_policy_enabled]
}
output "mssql_failover_groups_server_id" {
  description = "List of server_id values across all mssql_failover_groups"
  value       = [for k, v in azurerm_mssql_failover_group.mssql_failover_groups : v.server_id]
}
output "mssql_failover_groups_tags" {
  description = "List of tags values across all mssql_failover_groups"
  value       = [for k, v in azurerm_mssql_failover_group.mssql_failover_groups : v.tags]
}

