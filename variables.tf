variable "mssql_failover_groups" {
  description = <<EOT
Map of mssql_failover_groups, attributes below
Required:
    - name
    - server_id
    - partner_server (block):
        - id (required)
    - read_write_endpoint_failover_policy (block):
        - grace_minutes (optional)
        - mode (required)
Optional:
    - databases
    - readonly_endpoint_failover_policy_enabled
    - tags
EOT

  type = map(object({
    name                                      = string
    server_id                                 = string
    databases                                 = optional(set(string))
    readonly_endpoint_failover_policy_enabled = optional(bool)
    tags                                      = optional(map(string))
    partner_server = list(object({
      id = string
    }))
    read_write_endpoint_failover_policy = object({
      grace_minutes = optional(number)
      mode          = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.mssql_failover_groups : (
        length(v.partner_server) >= 1
      )
    ])
    error_message = "Each partner_server list must contain at least 1 items"
  }
}

