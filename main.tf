resource "azurerm_mssql_failover_group" "mssql_failover_groups" {
  for_each = var.mssql_failover_groups

  name                                      = each.value.name
  server_id                                 = each.value.server_id
  databases                                 = each.value.databases
  readonly_endpoint_failover_policy_enabled = each.value.readonly_endpoint_failover_policy_enabled
  tags                                      = each.value.tags

  partner_server {
    id = each.value.partner_server.id
  }

  read_write_endpoint_failover_policy {
    grace_minutes = each.value.read_write_endpoint_failover_policy.grace_minutes
    mode          = each.value.read_write_endpoint_failover_policy.mode
  }
}

